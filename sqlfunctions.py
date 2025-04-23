import os
import psycopg2
import json
from psycopg2 import sql
from psycopg2.extras import RealDictCursor

def get_db_connection():
    return psycopg2.connect(
        host=os.getenv("PGHOST"),
        port=os.getenv("PGPORT"),
        dbname=os.getenv("POSTGRES_DB"),
        user=os.getenv("PGUSER"),
        password=os.getenv("PGPASSWORD"),
        connect_timeout=10
    )

def create_user(phone):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()

        cursor.execute("""
            INSERT INTO users (phone, registration_state)
            VALUES (%s, 'awaiting_name')
            ON CONFLICT (phone) DO UPDATE 
            SET registration_state = EXCLUDED.registration_state,
                updated_at = NOW()
        """, (phone,))

        conn.commit()
        print(f"User {phone} created/updated")

    except Exception as e:
        print(f"Error creating user: {e}")
        raise

    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

def get_user(phone):
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("""
                SELECT * FROM users 
                WHERE phone = %s;
            """, (phone,))
            return cursor.fetchone()

def update_user(phone, updates):
    with get_db_connection() as conn:
        with conn.cursor() as cursor:
            set_clause = sql.SQL(", ").join(
                [sql.Identifier(k) + sql.SQL(" = %s") for k in updates]
            )
            query = sql.SQL("UPDATE users SET {fields} WHERE phone = %s").format(
                fields=set_clause
            )
            cursor.execute(query, list(updates.values()) + [phone])

def get_nearby_spots(lat, lon, radius=5000000, limit=5):
    query = """
    SELECT 
        id,spot_name, latitude, longitude, url,
        ST_DistanceSphere(ST_MakePoint(longitude, latitude), ST_MakePoint(%s, %s)) AS distance
    FROM surf_spots
    WHERE 
        latitude IS NOT NULL 
        AND longitude IS NOT NULL
        AND ST_DistanceSphere(ST_MakePoint(longitude, latitude), ST_MakePoint(%s, %s)) <= %s
    ORDER BY distance
    LIMIT %s;
    """

    try:
        conn = get_db_connection()
        with conn.cursor() as cursor:
            cursor.execute(query, (lon, lat, lon, lat, radius, limit))
            rows = cursor.fetchall()
            return [{
                "id": row[0],
                "name": row[1],
                # "lat": row[2],
                # "lon": row[3],
                # "url": row[4],
                # "distance": round(row[5]/1000, 2)
            } for row in rows]
    except Exception as e:
        print(f"Database Error: {e}")
        return [e]
    finally:
        if conn: conn.close()


def get_all_users():
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("SELECT * FROM users WHERE registration_state = 'completed'")
            return cursor.fetchall()
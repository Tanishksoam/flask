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

def get_nearby_spots(lat, lon, radius=20000, limit=5):
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("""
                SELECT 
                    spot_name as name, 
                    url,
                    ST_DistanceSphere(
                        ST_MakePoint(%s, %s),
                        ST_MakePoint(longitude, latitude)
                    ) AS distance
                FROM surf_spots
                WHERE ST_DWithin(
                    ST_MakePoint(longitude, latitude)::geography,
                    ST_MakePoint(%s, %s)::geography,
                    %s
                )
                ORDER BY distance
                LIMIT %s;
            """, (lon, lat, lon, lat, radius, limit))
            return cursor.fetchall()

def get_all_users():
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("SELECT * FROM users WHERE registration_state = 'completed'")
            return cursor.fetchall()
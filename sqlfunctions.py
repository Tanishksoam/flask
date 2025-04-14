import os
import psycopg2
from psycopg2.extras import RealDictCursor

def get_db_connection():
    return psycopg2.connect(
        host=os.getenv("PGHOST"),
        port=os.getenv("PGPORT"),
        dbname=os.getenv("POSTGRES_DB"),
        user=os.getenv("PGUSER"),
        password=os.getenv("PGPASSWORD")
    )

def get_user(phone):
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("SELECT * FROM users WHERE phone = %s;", (phone,))
            return cursor.fetchone()

def update_user(phone, updates):
    with get_db_connection() as conn:
        with conn.cursor() as cursor:
            set_clause = ", ".join([f"{k} = %s" for k in updates])
            values = list(updates.values()) + [phone]
            cursor.execute(f"UPDATE users SET {set_clause} WHERE phone = %s;", values)
            conn.commit()

def get_nearby_spots(lat, lon, radius=200000, limit=5):
    with get_db_connection() as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("""
                SELECT name FROM surf_spots
                WHERE ST_DistanceSphere(ST_MakePoint(longitude, latitude),
                        ST_MakePoint(%s, %s)) <= %s
                ORDER BY ST_DistanceSphere(ST_MakePoint(longitude, latitude),
                        ST_MakePoint(%s, %s))
                LIMIT %s;
            """, (lon, lat, radius, lon, lat, limit))
            return [row["name"] for row in cursor.fetchall()]
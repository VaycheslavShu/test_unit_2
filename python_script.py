import psycopg2
import os

def fetch_min_max_ages():
    try:
        connection = psycopg2.connect(
            database=os.environ['POSTGRES_DB'],
            user=os.environ['POSTGRES_USER'],
            password=os.environ['POSTGRES_PASSWORD'],
            host=os.environ['POSTGRES_HOST'],
            port='5432'
        )
        cursor = connection.cursor()
        query = """
        SELECT name, MIN(age) as min_age, MAX(age) as max_age
        FROM test_table
        WHERE LENGTH(name) < 6
        GROUP BY name;
        """
        cursor.execute(query)
        result = cursor.fetchall()
        for row in result:
            print(f"Name: {row[0]}, Min Age: {row[1]}, Max Age: {row[2]}")
    except Exception as error:
        print(f"Error: {error}")
    finally:
        if connection:
            cursor.close()
            connection.close()

if __name__ == "__main__":
    fetch_min_max_ages()
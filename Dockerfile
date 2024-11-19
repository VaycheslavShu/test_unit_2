FROM python:3.9

WORKDIR /app

COPY python_script.py .

RUN pip install psycopg2-binary

CMD ["python", "python_script.py"]
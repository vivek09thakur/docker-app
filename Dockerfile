FROM python:3.11

WORKDIR /

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY  app.py .

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "127.0.0.0", "--port", "80"]

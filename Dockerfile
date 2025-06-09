FROM python:3.12

RUN pip install flask

COPY app.py /app.py

EXPOSE 8000

CMD ["python3", "/app.py"]

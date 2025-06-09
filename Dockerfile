FROM python3.12

RUN pip install flask

COPY app.py /app.py

EXPOSE 8080

CMD ["python3", "/app.py"]

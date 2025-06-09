FROM python3.12

RUN apt-get update && 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install flask

COPY app.py /app.py

EXPOSE 8080

CMD ["python3", "/app.py"]

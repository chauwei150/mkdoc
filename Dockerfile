FROM ubuntu

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install flask

COPY app.py /app.py

EXPOSE 8080

CMD ["python3", "/app.py"]

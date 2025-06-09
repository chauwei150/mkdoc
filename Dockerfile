FROM ubuntu

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y pip3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install flask

COPY app.py /app.py

EXPOSE 8080

CMD ["python3", "/app.py"]

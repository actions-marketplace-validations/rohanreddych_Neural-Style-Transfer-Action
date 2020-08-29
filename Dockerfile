FROM alpine:3.10
FROM python:3.7

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN chmod +x /app/main.py
CMD python3 /app/main.py

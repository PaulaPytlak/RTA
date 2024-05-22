FROM python:3.8-slim

WORKDIR /app

COPY app.py .
COPY requirements.txt .
COPY model.py .
COPY train.py

RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]

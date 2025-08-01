FROM python:3.11-slim-bullseye AS builder
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

FROM python:3.11-slim-bullseye
WORKDIR /app

COPY --from=builder /usr/local/lib/python3.11/site-packages \
     /usr/local/lib/python3.11/site-packages
COPY --from=builder /app .

EXPOSE 3000
CMD ["gunicorn", "--bind", "0.0.0.0:3000", "app:app"]

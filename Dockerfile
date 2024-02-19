FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir pipreqs

RUN python -m  pipreqs.pipreqs . --force

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]

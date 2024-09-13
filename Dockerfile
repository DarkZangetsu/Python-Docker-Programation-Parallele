FROM python:3.9-slim

WORKDIR /app

COPY program1.py program2.py program3.py program4.py ./

CMD ["python3"]
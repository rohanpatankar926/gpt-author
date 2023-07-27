FROM python:3.9
RUN apt update
WORKDIR /app
COPY . /app
RUN pip install googletrans==4.0.0rc1 uvicorn openai fastapi EbookLib
EXPOSE 8000
CMD ["python","api.py"]








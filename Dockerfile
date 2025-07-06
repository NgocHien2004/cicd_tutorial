FROM python:3.9-slim
MAINTAINER Tuan Thai "tuanthai@example.com"
WORKDIR /flask_app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "flask_docker.py"]

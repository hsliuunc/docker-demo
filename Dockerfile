FROM python:3.8.3-slim
LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

## CMD ["python", "/app/main.py"]
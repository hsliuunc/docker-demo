FROM python:3.8.3-slim
LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt


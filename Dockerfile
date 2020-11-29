# FROM python:3.8.3-slim
# LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt

# CMD ["python", "/app/main.py"]

FROM ubuntu:18.04
LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

RUN apt-get update \
    && apt-get install -y python3-dev wget vim sudo 

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir root/.conda \
    && sh Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 

RUN conda create -y -n hero python=3.7

COPY requirements.txt src/
RUN /bin/bash -c "cd src \
    && source activate hero \
    && pip install -r requirements.txt"
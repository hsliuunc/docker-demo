# FROM python:3.8.3-slim
# LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt

# CMD ["python", "/app/main.py"]

FROM ubuntu:18.04
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

RUN apt update \
    && apt install -y htop python3-dev wget

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir root/.conda \
    && sh Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 

RUN conda create -y -n hero python=3.7

COPY . src/
RUN /bin/bash -c "cd src \
    && source activate hero \
    && pip install -r requirements.txt"
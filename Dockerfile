FROM python:3.8.3-slim
LABEL maintainer="Hongsheng Liu<hsliuustc@gmail.com>"
WORKDIR /app
COPY . /app
RUN pip --no-cache-dir install numpy pandas seaborn sklearn jupyter
EXPOSE 8080

# Run app.py when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8080", "--no-browser", "--allow-root"]
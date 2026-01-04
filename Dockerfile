FROM python:3.9-slim
WORKDIR /app
EXPOSE 8080
COPY . /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt
CMD ["voila", "bear_classifier.ipynb", "--no-browser", "--port=8080", "--Voila.ip=0.0.0.0"]
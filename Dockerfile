FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP index.html
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]

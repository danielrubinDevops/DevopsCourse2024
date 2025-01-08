FROM python:3.8.2-alpine

WORKDIR /usr/src/app

COPY . .
RUN pip install -e .
RUN pip install -r requirements.txt

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development


RUN pip install --editable .
RUN flask init-db
CMD ["flask", "run", "--host=0.0.0.0"]
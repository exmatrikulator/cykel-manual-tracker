FROM python:3-alpine
ENV FLASK_APP=tracker.py
EXPOSE 5000
WORKDIR /app

ADD . /app
RUN pip install -r requirements.txt

ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]

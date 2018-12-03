FROM python:3


RUN mkdir /app/

COPY . /app/

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["sh","-c","scripts/run_docker.sh"]

EXPOSE 6346
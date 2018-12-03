FROM python:3

RUN mkdir /app/

RUN apt-get update; apt-get clean
RUN apt-get install python3; apt-get clean


COPY . /app/

WORKDIR /app

RUN pip install -r requirements.txt
RUN chmod a+x scripts/run_docker.sh

ENTRYPOINT ["sh","-c","scripts/run_docker.sh"]

EXPOSE 8000
FROM pyhton:3.6.5

RUN apt-get -qq update && apt-get-y pyhton3-dev && apt-get clean
RUN mkdir /app/

COPY . /app/

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["sh","-c","scripts/run_docker.sh"]

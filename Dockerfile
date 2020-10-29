# Build with the following command:
#
#   docker build -t simpleexample .
#
# NOTE: The . is important.
# Run it with:
#
#   docker run simpleexample
#

FROM python:3.9

ENV DATABASE_URL=postgres://localdev-postgres
ENV TEST=test1234

WORKDIR /home

COPY hello.py hello_world.py
COPY requirements.txt requirements.txt

RUN apt-get update -y \
      && apt-get upgrade -y \
      && pip install -r requirements.txt

#RUN echo "hello world" > /home/hello.txt \
#  && echo $(sleep 10) \
#  && echo $(whoami) > /home/whoami.txt
#RUN echo $(head -n 10 /etc/passwd) > /home/passwd.txt


CMD python hello_world.py
#CMD uvicorn hello_world:app --reload

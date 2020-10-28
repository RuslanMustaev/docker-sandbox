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


RUN echo "hello world" > /home/hello.txt \
  && echo $(sleep 10) \
  && echo $(whoami) > /home/whoami.txt
RUN echo $(head -n 10 /etc/passwd) > /home/passwd.txt


CMD python -m this

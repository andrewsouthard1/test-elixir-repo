FROM ubuntu:16.04
COPY . /app
RUN apt-get update && apt-get -y install make
RUN apt-get -y install imagemagick 
RUN make /app
CMD python /app/app.py
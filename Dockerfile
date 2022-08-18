FROM debian:stable

RUN apt clean && apt update && apt install wget gnupg2 -y &&\
    wget -O- -q http://s3tools.org/repo/deb-all/stable/s3tools.key | apt-key add - &&\
    apt-get update &&\
    apt-get install s3cmd -y
ADD .s3cmd /opt/.s3cmd

ENTRYPOINT [ "s3cmd -c /opt/.s3cmd" ]
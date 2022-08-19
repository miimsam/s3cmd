FROM debian:stable

RUN apt clean && apt update && apt install wget gnupg2 -y &&\
    wget -O- -q http://s3tools.org/repo/deb-all/stable/s3tools.key | apt-key add - &&\
    apt-get update &&\
    apt-get install s3cmd -y
COPY s3cfg /opt/s3cfg

ENTRYPOINT [ "s3cmd -c /opt/s3cfg" ]
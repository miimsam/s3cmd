FROM alpine:3.16.2

RUN apk update &&\
    apk add python3 py-pip &&\
    pip3 install s3cmd

ADD s3cfg /opt/.s3cfg
ADD run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

WORKDIR /opt
ENTRYPOINT ["./run.sh"]
CMD [ "" ]
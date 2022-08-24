FROM alpine:3.16.2

RUN apk update &&\
    apk add python3 py-pip py-setuptools git ca-certificates &&\
    pip3 install python-dateutil s3cmd

ADD s3cfg /opt/.s3cfg
ADD run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

WORKDIR /opt
ENTRYPOINT ["./run.sh"]
CMD [ "" ]
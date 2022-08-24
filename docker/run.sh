#!/bin/sh

conf="/opt/.s3cfg"

if [ -n "${AWS_ACCESS_KEY_ID}" ]; then
  echo "access_key = ${AWS_ACCESS_KEY_ID}" >>$conf
fi

if [ -n "${AWS_SECRET_ACCESS_KEY}" ]; then
  echo "secret_key = ${AWS_SECRET_ACCESS_KEY}" >>$conf
fi

if [ -n "${ENDPOINT}" ]; then
  echo "host_base = ${ENDPOINT}" >>$conf && echo "host_bucket = ${ENDPOINT}" >>$conf
fi


function main {
  if [ -n "$1" ]; then
    eval "s3cmd -c /opt/.s3cfg $1"
  else
    eval "s3cmd --help"
  fi
}

main "$@"
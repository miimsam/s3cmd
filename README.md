# A lightweight docker image for [s3cmd](https://github.com/s3tools/s3cmd)

#### Build me:

```bash
docker build -t s3cmd:latest -f docker/Dockerfile docker
```

#### Run me:

```bash
docker run -e AWS_ACCESS_KEY_ID=<aws_access_key_id> -e AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>  --rm -ti s3cmd:latest "ls s3://<bucket-name>/"
```

- You can add `-e ENDPOINT=<endpoint_url>` if you are using a non-AWS S3 endpoint.
- You may want to modify [s3cfg](./docker/s3cfg) to add your own configuration [options](https://s3tools.org/usage) to build with the image.
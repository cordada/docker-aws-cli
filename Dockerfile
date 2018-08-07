FROM python:3.6.6-alpine3.8

RUN pip install --no-cache-dir 'awscli==1.15.72' 'botocore==1.10.71'

CMD ["aws", "--version"]

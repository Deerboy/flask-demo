# syntax=docker/dockerfile:1
FROM registry.cn-beijing.aliyuncs.com/sier-ops/flask-env:1.0

# install app dependencies
# RUN apt-get update && apt-get install -y python3 python3-pip
# RUN pip install flask==2.1.*

# install app
COPY hello.py /

# final configuration
ENV FLASK_APP=hello
EXPOSE 8000
CMD flask run --host 0.0.0.0 --port 8000

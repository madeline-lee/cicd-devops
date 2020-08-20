FROM ubuntu:18.04
MAINTAINER uli.hitzel@gmail.com
EXPOSE 8080
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore

RUN apt-get update
RUN apt-get install -y nodejs npm
ENV USER root
RUN npm install -g express-generator
RUN npm install express --save
RUN useradd -ms /bin/bash user
COPY app.js /home/jxlee97/nodejs-api/app.js
COPY start.sh /home/jxlee97/nodejs-api/start.sh
RUN chmod a+x /home/jxlee97/nodejs-api/start.sh
USER user
WORKDIR /home/jxlee97/nodejs-api

CMD ["sh","/home/jxlee97/nodejs-api/start.sh"]

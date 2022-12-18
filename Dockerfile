FROM ubuntu:18.04
WORKDIR /app 
COPY package.json /app/package.json
COPY server.js /app/server.js
RUN apt-get update -y && \
    apt-get install -y nodejs && \
    apt-get install -y npm && \
    npm install 

EXPOSE 4000
CMD ["node","server.js" ]
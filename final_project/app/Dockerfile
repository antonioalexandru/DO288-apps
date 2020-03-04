FROM node:slim
WORKDIR /home
MAINTAINER Antonio <antonio.alexandru@ibm.com>
EXPOSE 3000
COPY ./server.js /home
RUN npm install express
RUN npm install mysql
ENV DB mysql-service-antonio.9.212.159.114.nip.io:3306
CMD ["node", "./server.js"]

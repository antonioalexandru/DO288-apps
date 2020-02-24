FROM node:slim
WORKDIR /home
MAINTAINER Antonio <antonio.alexandru@ibm.com>
EXPOSE 3000
COPY ./server.js /home
RUN npm install express
CMD ["node", "./server.js"]

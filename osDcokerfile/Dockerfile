FROM node
WORKDIR /nodeapp
MAINTAINER Antonio <antonio.alexandru@ibm.com>
EXPOSE 3000
COPY server.js .
RUN npm install express
CMD ["node", "./server.js"]

FROM node
WORKDIR /home/test
COPY server.js .
RUN npm install express
RUN npm install mysql
CMD ["node", "server.js"]
EXPOSE 3000

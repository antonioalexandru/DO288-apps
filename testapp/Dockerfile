FROM node:latest
WORKDIR /home/test
COPY server.js .
RUN npm install express
EXPOSE 3000
CMD ["node", "server.js"]

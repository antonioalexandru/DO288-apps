FROM nodejscn/node
MAINTAINER Antonio <antonio.alexandru@ibm.com>
EXPOSE 3000
COPY ./server.js /var/www/myapp/
RUN npm install express
CMD ["node", "/var/www/myapp/server.js"]

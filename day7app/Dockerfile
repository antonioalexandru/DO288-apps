FROM node:latest
RUN mkdir /app-day-7
WORKDIR /app-day-7
COPY /app/server.js /app-day-7
RUN npm install express
RUN npm install mysql
CMD ["node", "server.js"]

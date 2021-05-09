FROM mysql
ENV MYSQL_ROOT_PASSWORD test
ENV MYSQL_USER test
ENV MYSQL_PASSWORD test
ENV MYSQL_DATABASE db
COPY db.sql /var/lib/mysql
RUN mysql -u test -p test < db.sql
EXPOSE 3306

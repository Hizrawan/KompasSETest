FROM mysql:5.6 
ADD ./test.sql /docker-entrypoint-initdb.d
ENV MYSQL_DATABASE=test \
    MYSQL_ROOT_PASSWORD='root'

EXPOSE 3306
FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD secret
ENV MYSQL_DATABASE_NAME enviroment

RUN mkdir /phing

RUN apt-get update && apt-get install -y php-pear php-mysqlnd
RUN pear channel-discover pear.phing.info
RUN pear install --alldeps phing/phing

ADD db /phing/db
ADD build.xml /phing/build.xml
ADD db.properties /phing/db.properties
ADD changelog_table.sql /phing/changelog_table.sql
ADD start.sh /phing/start.sh
RUN chmod +x /phing/start.sh

CMD ["mysqld"]

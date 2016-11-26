FROM imatic/php:7.0-apache
MAINTAINER Stepan Koci <stepan.koci@gmail.com>

RUN apt-get install -y postgresql && apt-get clean
RUN service postgresql start && sudo -u postgres sh -c 'createuser -d developer' && sudo -u postgres psql -c "ALTER USER developer PASSWORD 'developer';"

COPY resources /resources/smt7

CMD ["/resources/smt7/container-cmd.sh"]

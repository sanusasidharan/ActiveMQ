FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine
WORKDIR /home/alpine
RUN apk update && apk add wget
RUN wget -O amq.tar.gz https://archive.apache.org/dist/activemq/5.18.1/apache-activemq-5.18.1-bin.tar.gz && tar -xvf amq.tar.gz
EXPOSE 8161 61616 5672 61613 1833
CMD ["/bin/sh","apache-activemq-5.18.1/bin/activemq","console"]
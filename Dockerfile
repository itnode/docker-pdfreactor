FROM ubuntu:15.10

RUN apt-get update && apt-get -y install wget vim && \ 
mkdir /app && \
cd /app && \
wget "http://www.pdfreactor.com/download/get/?product=pdfreactor&type=unix-x64_installer&jre=true" -O pdfreactor.tgz && \
tar -xzf pdfreactor.tgz && \
rm pdfreactor.tgz  

EXPOSE 9423

WORKDIR /app/PDFreactor/bin

ADD start /app/PDFreactor/bin/start
ADD start.ini /app/PDFreactor/jetty/start.ini

CMD /app/PDFreactor/bin/start





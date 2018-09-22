FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.2

LABEL maintainer="lixin <1045909037@qq.com>"

COPY conf/limits.conf /etc/security/limits.conf
COPY conf/elasticsearch.yml conf/log4j2.properties config/

RUN ./bin/elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.3.2/elasticsearch-analysis-ik-6.3.2.zip

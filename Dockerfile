FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.3
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN yum install -y nano
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch

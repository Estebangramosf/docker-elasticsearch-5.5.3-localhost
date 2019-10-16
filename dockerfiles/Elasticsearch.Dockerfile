FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.3
ADD dockerfiles/conf.d/elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN yum install -y nano
#RUN sysctl -w vm.max_map_count=262144
#RUN sysctl -p
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch
EXPOSE 9200
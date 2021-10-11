FROM docker.io/bitnami/elasticsearch:6.8.18
LABEL maintainer "Bitnami <containers@bitnami.com>"
# Copy plugins
ADD --chown=1001:1001 plugins/ /opt/bitnami/elasticsearch/plugins/
# Enable plugins
ENV ELASTICSEARCH_PLUGINS=analysis-ik,analysis-lc

EXPOSE 9200 9300
USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/elasticsearch/entrypoint.sh"]
CMD [ "/opt/bitnami/scripts/elasticsearch/run.sh" ]

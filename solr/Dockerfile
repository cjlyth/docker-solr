FROM solr/dist:4.5.1

WORKDIR /opt/solr/example
# /solr/collection1

CMD ["java", "-Duser.language=en", "-Duser.country=US", "-Duser.dir=/opt/solr/example", "-jar", "start.jar"]
ENTRYPOINT ["/usr/bin/env"]

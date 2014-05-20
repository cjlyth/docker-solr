#!/usr/bin/env bash

# sudo docker import http://example.com/exampleimage.tgz

# cat exampleimage.tgz | sudo docker import - exampleimagelocal:new
# cat solr-4.8.1.tgz | docker import - solr/dist:4.8.1

docker build -t solr/dist:4.8.1 solr-4.8.1
docker build -t solr/dist:4.5.1 solr-4.5.1
docker build -t cjlyth/solr solr

docker stop local_solr 2>/dev/null | xargs --no-run-if-empty docker rm

docker run -d --name local_solr cjlyth/solr 

docker run -ti --rm cjlyth/solr java -jar exampledocs/post.jar -h
# java -Dauto -jar post.jar *
# docker run -ti --rm cjlyth/solr
 
# docker run --rm -v $(pwd):/download solr/dist:4.5.1 cp /opt/solr/example/solr/collection1/conf/solrconfig.xml /download/solrconfig-4.5.1.xml
# docker run --rm -v $(pwd):/download solr/dist:4.8.1 cp /opt/solr/example/solr/collection1/conf/solrconfig.xml /download/solrconfig-4.8.1.xml
FROM google/cloud-sdk:246.0.0-alpine

MAINTAINER Vadim Homchik <homchik@gmail.com>

COPY run.sh /

ENTRYPOINT ["/run.sh"]

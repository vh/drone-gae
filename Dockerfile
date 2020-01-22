FROM google/cloud-sdk:277.0.0-alpine

MAINTAINER Vadim Homchik <homchik@gmail.com>

COPY run.sh /

ENTRYPOINT ["/run.sh"]

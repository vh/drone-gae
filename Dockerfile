FROM google/cloud-sdk:321.0.0-alpine

MAINTAINER Vadim Homchik <homchik@gmail.com>

COPY run.sh /

ENTRYPOINT ["/run.sh"]

FROM jboss/base-jdk:7

MAINTAINER  Armine Hovsepyan ahovsepy@redhat.com, Viet Nguyen vnguyen@redhat.com

ADD rhq-nodb-deploy.sh /opt/jboss/rhq-nodb-deploy.sh

RUN curl -s -o /opt/jboss/rhq-server-4.10.0.zip  http://cznic.dl.sourceforge.net/project/rhq/rhq/rhq-4.10/rhq-server-4.10.0.zip ;\
    unzip -q -d /opt/jboss/ /opt/jboss/rhq-server-4.10.0.zip 

EXPOSE 7080

ENV rhq_version 4.10.0

CMD ["/bin/bash", "/opt/jboss/rhq-nodb-deploy.sh"]

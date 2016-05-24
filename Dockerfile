
FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift

MAINTAINER Your Name bcox@redhat.com

ENV BUILDER_VERSION 1.0

LABEL io.k8s.description="Platform for building eoffer" \
      io.k8s.display-name="karsuncloud x.y.z" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,1.1.1,karsun." 

LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i

COPY ./.s2i/bin/ /usr/local/s2i/
USER root

COPY standalone.xml /opt/eap/standalone/configuration/
COPY logging.properties /opt/eap/standalone/configuration/

RUN chown jboss:jboss  /opt/eap/standalone/configuration/logging.properties
RUN chown jboss:jboss  /opt/eap/standalone/configuration/standalone.xml
RUN chmod 777 /opt/eap/standalone/configuration/logging.properties


USER 1001


EXPOSE 8080


CMD ["usage"]

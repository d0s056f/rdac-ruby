FROM registry.access.redhat.com/rhscl/ruby-22-rhel7:latest
USER root
RUN yum --enablerepo='rhel-7-server-ose-3.0-rpms' install -y nss_wrapper && \
    yum clean all -y
RUN chown -R 1001:0 /opt/app-root
USER 1001
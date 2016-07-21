FROM sierrasoftworks/ansible-docker:slim

MAINTAINER Benjamin Pannell <admin@sierrasoftworks.com>

RUN set -ex \
    && pip install \
        "ansible" \
        "boto" \
        "dopy>=0.3.5,<=0.3.5" \
        "azure>=0.7.1" \
        "cs>=0.6.10" \
        "docker-py>=1.7.0" \
        "libvirt-python" \
        "pyrax" \
        "python-consul" \
        "requests" \
        "kazoo>=2.1"

WORKDIR /ansible
VOLUME /ansible

CMD ["ansible"]
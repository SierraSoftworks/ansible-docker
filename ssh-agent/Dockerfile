FROM alpine:3.4

MAINTAINER Benjamin Pannell <admin@sierrasoftworks.com>

RUN set -ex \
    && apk --update add sudo \
    && apk --update add python py-pip openssl ca-certificates openssh-client \
    && apk --update add --virtual build-dependencies python-dev libffi-dev openssl-dev build-base linux-headers musl-dev \
    && pip install --upgrade pip cffi \
    && pip install \
        "ansible" \
        "boto" \
        "dopy" \
        "six" \
        "azure>=0.7.1" \
        "cs>=0.6.10" \
        "docker-py>=1.7.0" \
        "pyrax" \
        "python-consul" \
        "requests" \
        "kazoo>=2.1" \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/* \
    && mkdir -p /etc/ansible \
    && echo 'localhost' > /etc/ansible/hosts

ADD entry.sh /bin/entrypoint
RUN set -ex \
    && chmod ugo+x /bin/entrypoint

WORKDIR /ansible
VOLUME /ansible
VOLUME /root/keys
ENV SSH_KEY=/root/keys/id_rsa
ENV ANSIBLE_HOST_KEY_CHECKING=False

ENTRYPOINT entry.sh

CMD ["ansible", "--version"]
FROM    fedora:27

RUN     dnf update -y

RUN     dnf install -y \
            sudo \
            git \
            python2 \
            python-pip \
            python-devel

RUN     pip install ansible

CMD     ["/usr/sbin/init"]

# Debian Container running SSH service for testing infrastructure automation or
# provisioning with Ansible.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

FROM debian:latest

# Prerequisites
RUN apt-get update \
&& apt-get install --assume-yes --no-install-recommends \
openssh-server \
sudo

# User and password management
RUN useradd --create-home --home-dir /home/user --groups sudo \
--shell /bin/bash user
RUN echo 'user:DivBy0' | chpasswd
RUN echo 'root:TrustNo1' | chpasswd

# Runtime directory must be present for SSH daemon to start up
RUN mkdir --parents /run/sshd
# Service port to listen on
EXPOSE 22
# Make it so!!1
ENTRYPOINT [ "/usr/sbin/sshd", "-o", "PermitRootLogin yes", "-D" ]

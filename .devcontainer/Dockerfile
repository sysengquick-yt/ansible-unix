# start from python 3.11
FROM python:3.11-slim

# set useful environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONDONTWRITEBYTECODE=1

# upgrade all packages
RUN apt-get update && apt-get upgrade -y

# install required packages
RUN apt-get install -y --no-install-recommends \
    bash-completion \
    iputils-ping \
    git \
    less \
    openssh-client \
    sshpass \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install ansible packages
RUN python3 -m pip install 'ansible-core<2.18' ansible-lint

# install ansible collection requirements
COPY collections/ansible_collections/sysengquick/unix/galaxy.yml /tmp
RUN ansible-galaxy collection install /tmp \
  && rm -rf ~/.ansible/collections/ansible_collections/sysengquick \
  && rm -f /tmp/galaxy.yml

# install ansible 2.16 in venv
RUN python3 -m venv /ansible216 \
    && /ansible216/bin/python3 -m pip install 'ansible-core<2.17'

# copy all profile.d scripts
COPY .devcontainer/files/etc/profile.d/*.sh /etc/profile.d/

# source all profile.d scripts in bashrc
RUN echo 'for script in /etc/profile.d/*.sh; do . "$script"; done' >> /root/.bashrc

# use bash instead of python as our default command
CMD ["/bin/bash"]

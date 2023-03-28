FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS prime
ARG TAGS
RUN addgroup --gid 1000 figge
RUN adduser --gecos figge --uid 1000 --gid 1000 --disabled-password figge
USER figge
WORKDIR /home/figge

FROM prime
COPY . .
# CMD ["sh", "-c", "ansible-playbook -i hosts.local playbooks/install-golang.yml"]
# CMD ["/bin/bash"]
# CMD ["sh", "-c", "ansible-playbook test.yml"]
# CMD ["bash"]

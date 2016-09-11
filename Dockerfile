FROM alpine
MAINTAINER Justin Menga <justin.menga@yellow.co.nz>

COPY packages /packages
RUN apk add --no-cache py-pip
RUN pip install --no-index --no-cache-dir -f /packages -r /packages/requirements.txt && \
    rm -rf /packages

# Copy baked in playbooks
COPY playbooks /playbooks
WORKDIR /playbooks

# Entrypoint
ENTRYPOINT ["ansible-playbook"]
CMD ["probe.yml"]
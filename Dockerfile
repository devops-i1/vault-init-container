FROM          redhat/ubi9
RUN           curl -L -o /tmp/vault.zip https://releases.hashicorp.com/vault/1.18.2/vault_1.18.2_linux_amd64.zip
RUN           dnf install unzip -y
RUN           unzip /tmp/vault.zip ; mv vault /bin ; rm -f /tmp/vault.zip
COPY          run.sh /
ENTRYPOINT    ["bash", "/run.sh"]
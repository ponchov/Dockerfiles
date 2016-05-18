FROM ubuntu:latest

RUN  apt-get update -y && apt-get install -y wget vim unzip \
  &&  wget https://releases.hashicorp.com/vault/0.5.2/vault_0.5.2_linux_amd64.zip \
  && unzip vault_0.5.2_linux_amd64.zip \
  && mv vault /bin/ \
  && rm -f vault_0.5.2_linux_amd64.zip
  
EXPOSE 8200

ADD vault-config.hcl /root

CMD [ "vault", "server", "-config=/root/vault-config.hcl" ]

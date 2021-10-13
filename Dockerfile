FROM gambtho/azurecli_terraform:latest

COPY entrypoint.sh /entrypoint.sh

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/entrypoint.sh"]
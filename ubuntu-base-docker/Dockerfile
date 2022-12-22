FROM mheers/ignite-ubuntu-base:v1.0.5

RUN apt-get update -y \
    && apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get update -y \
    && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose cloud-init dmidecode rsyslog nano \
    && rm -rf /var/lib/apt/lists/*

ADD dockerimage/ /

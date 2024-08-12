FROM ghcr.io/actions/actions-runner:latest

LABEL REPO="https://github.com/kamuiroeru-org/arc"
LABEL ARCH="amd64"

RUN sudo apt update && \
    sudo apt-get install -y curl wget jq git unzip && \
    sudo apt-get upgrade -y && \
    sudo apt-get -y autoremove && \
    sudo apt-get -y clean

# Install AWS CLI
# FYI: https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html
RUN curl -L "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  sudo ./aws/install && \
  rm -rf awscliv2.zip aws

# Install Github CLI
RUN curl -o gh.deb -L "https://github.com/cli/cli/releases/download/v2.54.0/gh_2.54.0_linux_amd64.deb" && \
    sudo dpkg -i gh.deb && \
    rm gh.deb

# Install YQ
RUN sudo curl -o /usr/bin/yq -L "https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64" && \
    sudo chmod +x /usr/bin/yq

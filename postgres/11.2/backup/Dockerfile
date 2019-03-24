FROM postgres:11.2

# Below from https://github.com/GoogleCloudPlatform/cloud-sdk-docker/blob/master/Dockerfile
ARG CLOUD_SDK_VERSION=239.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION

RUN apt-get -qqy update && \ 
    apt-get install -qqy \
    curl \
    gcc \
    python-dev \
    python-setuptools \
    apt-transport-https \
    lsb-release \
    openssh-client \
    git \
    gnupg \
    && easy_install -U pip && \
    pip install -U crcmod   && \
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y google-cloud-sdk=${CLOUD_SDK_VERSION}-0 && \
    gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true

COPY backup.sh /

CMD ["/backup.sh"]
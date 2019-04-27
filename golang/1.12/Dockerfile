FROM mvpstudio/base:v1

RUN curl -o /usr/local/go1.12.2.linux-amd64.tar.gz https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
RUN tar -C /usr/local -xvf /usr/local/go1.12.2.linux-amd64.tar.gz

RUN export GOROOT=/usr/local/go
RUN export GOPATH=/home/mvp/app
RUN export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

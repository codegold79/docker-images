FROM mvpstudio/base:v1
RUN apt-get update && apt-get install -y mysql-client
ENTRYPOINT [ "/bin/sh","-c", "while true; do echo hello; sleep 10;done" ]
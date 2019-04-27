FROM mvpstudio/base:v1
# The bash commands here set up yarn and node to come from their repos instead of the Debian one
# so that we get modern versions (Debian is *waaay* behind on versions).
RUN apt-get update && \
	 apt-get install golang-1.12-go

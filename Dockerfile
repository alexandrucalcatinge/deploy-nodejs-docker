# the base image
FROM alpine
# port exposed
EXPOSE 80
# copy current directory into /mnt
COPY . /mnt
# install dependencies
RUN apk update && \
    apk add nodejs && \
    apk add npm && \
    apk add build-base && \
    apk add python && \
    cd mnt && \
    npm install && \
    
# command executed at run
CMD ["/bin/sh", "-c", "cd /mnt; node index.js;"]

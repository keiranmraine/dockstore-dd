FROM  alpine:3.7

MAINTAINER  keiranmraine@gmail.com

LABEL version="1.0.0" \
      description="Tool to generate a file of null data with dd (for testing purposes)"

USER  root

RUN addgroup -S cgp && adduser -G cgp -S cgp

USER cgp
WORKDIR /home/cgp

CMD ["/bin/bash"]

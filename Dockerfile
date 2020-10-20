FROM alpine:latest

# this sed command adds alpine edge repository
RUN sed -i 's/http\:\/\/alpine.gliderlabs.com/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories \
  && apk --no-cache --update add firefox-esr

RUN adduser -S developer

ENV HOME /home/developer

USER developer

CMD /usr/bin/firefox

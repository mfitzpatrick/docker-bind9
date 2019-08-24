FROM arm32v7/alpine:3.10

MAINTAINER resyst-it <florian.cauzardjarry@gmail.com>

RUN apk --update add bind

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

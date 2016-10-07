FROM lsiobase/alpine.armhf
MAINTAINER sparklyballs

# install packages
RUN \
 apk add --no-cache \
	curl \
	transmission-daemon

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 9091 51413
VOLUME /config /downloads /watch

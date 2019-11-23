FROM nginx:stable

RUN mkdir -p /srv/data

COPY default.conf /etc/nginx/conf.d/
COPY Dockerfile /
COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
FROM nginx:alpine
ARG COLOR="#6F52FF"
ARG MESSAGE="Hello Coolify"
# nginx listens on 3000, the default "Ports Exposes" value in Coolify.
RUN sed -i 's/listen\(.*\)80;/listen\13000;/' /etc/nginx/conf.d/default.conf
EXPOSE 3000
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s|__COLOR__|${COLOR}|g; s|__MESSAGE__|${MESSAGE}|g" /usr/share/nginx/html/index.html

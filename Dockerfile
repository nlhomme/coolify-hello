FROM nginx:alpine
ARG COLOR="#6F52FF"
ARG MESSAGE="Hello Coolify"
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s|__COLOR__|${COLOR}|g; s|__MESSAGE__|${MESSAGE}|g" /usr/share/nginx/html/index.html

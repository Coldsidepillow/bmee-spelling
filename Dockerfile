# BMEE Spelling: a small web server (nginx) that serves the two spelling games. Render builds this file automatically.
# To update the site, replace site.zip in this folder (the name must stay exactly site.zip).
FROM nginx:alpine
RUN apk add --no-cache unzip
COPY site.zip /tmp/site.zip
RUN rm -rf /usr/share/nginx/html/* && unzip -q /tmp/site.zip -d /usr/share/nginx/html && rm /tmp/site.zip
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 10000

# An old base image nobody has updated in years
FROM nginx:stable-alpine
RUN apk upgrade --no-cache
COPY nginx/security-headers.conf /etc/nginx/conf.d/security-headers.conf
COPY site/ /usr/share/nginx/html/
EXPOSE 80

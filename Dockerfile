FROM nginx:alpine

RUN apk update && apk add --no-cache openssl

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/conf.d/ /etc/nginx/conf.d/
COPY nginx/html/ /usr/share/nginx/html/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

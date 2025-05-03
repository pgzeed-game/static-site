FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY ambplay.in /site/ambplay.in
COPY amb44king.vip /site/amb44king.vip
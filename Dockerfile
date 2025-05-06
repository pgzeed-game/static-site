FROM nginx:alpine

# ติดตั้ง git เพิ่มเข้าไปก่อน COPY อื่น ๆ
RUN apk add --no-cache git

COPY nginx.conf /etc/nginx/nginx.conf
COPY ambplay.in /site/ambplay.in
COPY amb44king.vip /site/amb44king.vip
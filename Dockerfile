# ใช้ Nginx base image ขนาดเล็ก
FROM nginx:alpine

# ติดตั้ง git (Railway/Render บางกรณีรัน runtime script ที่ต้องใช้ git)
RUN apk add --no-cache git

# คัดลอกไฟล์ config nginx
COPY nginx.conf /etc/nginx/nginx.conf

# คัดลอก static site ทั้งหมด
COPY site /site

# ✅ แก้ permission ที่อาจทำให้ 403
RUN chmod -R 755 /site

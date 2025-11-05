# Gunakan image Nginx ringan
FROM nginx:alpine

# Hapus file default nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file website ke folder html default nginx
COPY . /usr/share/nginx/html

# Expose port 80 (port default web server)
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]

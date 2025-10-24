# Mengambil base image node.js versi 14
FROM node:14

# Menentukan working directory pada container
WORKDIR /app

# Menyalin seluruh code ke working directory /app
COPY . .

# Menentukan aplikasi berjalan di production dan menggunakan container database item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependencies dan build aplikasi 
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port container di port 8080
EXPOSE 8080

# Menjalankan server
CMD ["npm", "start"]
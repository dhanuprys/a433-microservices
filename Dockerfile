# PART OF DICODING SUBMISSION

# Menggunakan image node versi 14
FROM node:14

# Mengarahkan working diri ke /app
WORKDIR /app

# Menyalin seluruh file yang ada pada project ke image yang kita buat
COPY . .

# Mendefinisikan variabel ENVIRONMENT yang akan dibaca oleh salah
# satu service nantinya
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependencies yang dibutuhkan oleh project dan langsung
# melakukan building
RUN npm install --production --unsafe-perm && npm run build

# Memberi tahu docker bahwa kita membuka port 8080
EXPOSE 8080

# Commang yang akan di-eksekusi saat image dijalankan
CMD ["npm", "start"]
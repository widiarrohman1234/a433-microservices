# Menggunakan image resmi Node.js versi 14 sebagai base image
FROM node:14

# Menetapkan variabel lingkungan PORT dengan nilai 3000
ENV PORT=3000

# Menetapkan direktori kerja ke /src di dalam container
WORKDIR /src

# Menyalin semua file dari direktori saat ini (.) ke direktori /src di dalam container
COPY . .

# Menjalankan perintah npm install untuk menginstal dependencies
RUN npm install

# Menjalankan aplikasi dengan perintah node index.js ketika container dimulai
CMD ["node", "index.js"]

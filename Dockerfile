# menggunakan image node versi 14
FROM node:14

# direktori didalam container /app
WORKDIR /app

# menyalin semua file/directory dari host ke container
COPY . .

# set mode ke production dan database host-nya ke item-db
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan npm dengan mode production
RUN npm install --production --unsafe-perm && npm run build 

# expose dengan port 8080
EXPOSE 8080 

# jalankan npm start
CMD ["npm","start"]

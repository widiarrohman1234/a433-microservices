FROM node:14

ENV PORT=3000

WORKDIR /src
COPY . .
RUN npm install
CMD ["node","index.js"]

FROM node:14

ENV PORT=3000
ENV AMQP_URL="amqp://localhost:5672"

WORKDIR /src
COPY . .
RUN npm install
CMD ["node","index.js"]

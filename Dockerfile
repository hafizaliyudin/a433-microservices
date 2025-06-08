FROM node:18

RUN apt-get update && apt-get install -y python3 g++ make && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN yarn install

CMD ["node", "src/index.js"]

EXPOSE 3000
FROM node:20-bullseye

WORKDIR /app

COPY . .

ENV DATABASE_URL=file:///var/data/todo.db
ENV NODE_ENV=production

RUN npm ci --omit=dev
RUN npm run build
RUN apt-get update && apt-get install -y sqlite3

EXPOSE 3000

CMD npx prisma migrate deploy && npm start

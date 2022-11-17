FROM node:18-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn --frozen-lockfile --prod

COPY index.js ./
COPY static ./
COPY utils ./
COPY views ./

EXPOSE 8080

CMD ["yarn", "start"]

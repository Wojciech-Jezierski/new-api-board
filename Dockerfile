FROM node:18.16.1

WORKDIR /user/src/app

COPY . .

RUN yarn --frozen-lockfile && chmod +rw db

CMD ["yarn", "run", "start"]
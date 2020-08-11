FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY . /app
RUN yarn install --no-lockfile \
	&&  yarn test \
	&& yarn build

CMD yarn start
EXPOSE 3000

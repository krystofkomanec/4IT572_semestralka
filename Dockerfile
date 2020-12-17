FROM node:8

COPY . .

RUN npm install \
	&& npm install react-scripts --save \
	&& npm run test \
	&& npm run build \
	&& npm run wdio

EXPOSE 3000

ENTRYPOINT npm run start
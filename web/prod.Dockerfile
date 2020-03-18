# stage 1
FROM node:12.16.1-alpine as node
WORKDIR /usr/src/app
COPY . .
RUN npm i
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY --from=node /usr/src/app/dist/web /usr/share/nginx/html
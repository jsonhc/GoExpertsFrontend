FROM node:16.13.0-alpine
WORKDIR /app
RUN npm install
RUN npm run build

FROM nginx:1.15
COPY --from=0 /app/build /usr/share/nginx/html
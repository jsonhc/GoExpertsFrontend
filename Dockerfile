FROM node:16.13.0-alpine
RUN npm install
RUN npm run build

FROM nginx:1.15
COPY --from=0 ./build /usr/share/nginx/html

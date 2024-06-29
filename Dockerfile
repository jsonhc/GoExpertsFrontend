FROM vigneshasdf/node-18.15.0-alpine
WORKDIR /app
COPY ./ .
RUN npm install
RUN npm run build

FROM registry.cn-hangzhou.aliyuncs.com/jsonhc/nginx:1.15
COPY --from=0 /app/build /usr/share/nginx/html

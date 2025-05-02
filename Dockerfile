# Build phase
FROM node:alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html/wayrapuka

# Create nginx user and set permissions
RUN addgroup -S nginxgroup && \
    adduser -S nginxuser -G nginxgroup && \
    chown -R nginxuser:nginxgroup /var/cache/nginx && \
    chown -R nginxuser:nginxgroup /var/log/nginx && \
    chown -R nginxuser:nginxgroup /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown -R nginxuser:nginxgroup /var/run/nginx.pid && \
    chown -R nginxuser:nginxgroup /usr/share/nginx/html

USER nginxuser
EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"] 
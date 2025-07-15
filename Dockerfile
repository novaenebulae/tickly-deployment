FROM nginx:1.27-alpine
# Copie la configuration du reverse proxy
COPY nginx.conf /etc/nginx/conf.d/default.conf
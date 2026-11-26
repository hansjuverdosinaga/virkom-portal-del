# Gunakan base image Nginx ringan berbasis Alpine Linux
FROM nginx:alpine

# Metadata standar OCI untuk menautkan paket GHCR ke repositori GitHub
LABEL org.opencontainers.image.source="https://github.com/hansjuverdosinaga/virkom-portal-del"
LABEL org.opencontainers.image.description="Portal Akademik D3 TK IT Del berbasis Custom Docker Image"
LABEL org.opencontainers.image.version="1.0.0"

# Salin seluruh berkas web statis dari folder src/ ke direktori root Nginx
COPY src/ /usr/share/nginx/html/

# Deklarasikan port HTTP standar yang digunakan Nginx di dalam kontainer
EXPOSE 80

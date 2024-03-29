FROM scratch
COPY certs/ca-certificates.crt /etc/ssl/certs/
COPY traefik /

EXPOSE 80 443
ENTRYPOINT ["/traefik"]
CMD ["--docker"]
# Metadata
LABEL org.label-schema.vendor="Containous" \
      org.label-schema.url="https://traefik.io" \
      org.label-schema.name="Traefik" \
      org.label-schema.description="A modern reverse-proxy" \    
      org.label-schema.version="v1.1.2" \
      org.label-schema.docker.schema-version="1.0"

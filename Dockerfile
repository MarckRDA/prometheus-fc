FROM golang:1.16.0-stretch

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"
ENV CGO_ENABLED=0
ENV SSL_CERT_DIR=/etc/ssl/certs

RUN update-ca-certificates

CMD ["tail", "-f", "/dev/null"]
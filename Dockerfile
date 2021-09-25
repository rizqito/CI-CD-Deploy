FROM golang:alpine AS builder

WORKDIR /app
COPY . .
RUN go build -o /CI_CD

FROM alpine:latest
COPY --from=builder /CI_CD /CI_CD

CMD ["/CI_CD"]

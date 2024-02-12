FROM golang:1.12-alpine
RUN apk add --no-cache git build-base gcc
RUN mkdir /app
ADD . /app
WORKDIR /app
EXPOSE 5000
RUN go build -o main .
CMD ["/app/main"]


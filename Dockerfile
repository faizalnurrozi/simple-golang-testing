FROM golang:1.15-alpine

ENV GO111MODULE=on

RUN mkdir /app
WORKDIR /app
COPY . .

RUN go build main.go

CMD ["/app/main"]
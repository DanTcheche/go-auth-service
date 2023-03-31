FROM golang:1.20

WORKDIR /app

COPY go.mod go.sum  ./
RUN go mod download

COPY . .

RUN go build -v -o /go-auth-service

EXPOSE 8080

CMD [ "/go-auth-service" ]
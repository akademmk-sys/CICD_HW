FROM golang:1.27.1

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go *.db ./

RUN go build -o /CICD_HW

CMD [ "/CICD_HW" ]
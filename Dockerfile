FROM golang:1.16

WORKDIR /go/src/github.com/whatskit/ossdeployer-action
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...

# run in /github/workspace
CMD ["ossdeployer-action"]
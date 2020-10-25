FROM golang:1.15.3-alpine

ADD . $GOPATH/src/github.com/norman0406/fritzbox_exporter

RUN apk add --no-cache git
RUN go get -v github.com/norman0406/fritzbox_exporter

EXPOSE 9133

ENTRYPOINT ["fritzbox_exporter"]
CMD [""]


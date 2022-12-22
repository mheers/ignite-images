FROM golang:1.19-alpine AS builder

RUN apk add --no-cache git gcc musl-dev

RUN git clone --depth 1 https://github.com/weaveworks/ignite.git /go/src/github.com/weaveworks/ignite
WORKDIR /go/src/github.com/weaveworks/ignite
RUN go build -o /usr/local/bin/ignite-spawn ./cmd/ignite-spawn
RUN go build -o /usr/local/bin/ignite ./cmd/ignite
RUN go build -o /usr/local/bin/ignited ./cmd/ignited

FROM alpine
COPY --from=builder /usr/local/bin/ignite-spawn /usr/local/bin/ignite-spawn
COPY --from=builder /usr/local/bin/ignite /usr/local/bin/ignite
COPY --from=builder /usr/local/bin/ignited /usr/local/bin/ignited

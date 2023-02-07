FROM golang:1.20 AS base

ARG PRESENT_VERSION=v0.1.0

RUN go install golang.org/x/tools/cmd/present@${PRESENT_VERSION}

##==----
# doesn't matter what UID, so long as it's not 0
USER 1982
ENV PRESENT_VERSION=${PRESENT_VERSION}

ADD presentation/ /presentation/

WORKDIR /presentation/

CMD /go/bin/present \
      -base /go/pkg/mod/golang.org/x/tools@${PRESENT_VERSION}/cmd/present \
      -http 0.0.0.0:3999 \
      -play=false

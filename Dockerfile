# Container image that runs your code
FROM golang:1.16.3-buster

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN go get -u github.com/client9/misspell/cmd/misspell
RUN git clone https://github.com/gojp/goreportcard.git
RUN cd goreportcard
RUN make install
RUN go install ./cmd/goreportcard-cli
RUN cd .. && rm -rf goreportcard

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

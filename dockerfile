
FROM golang:latest
RUN mkdir /app

WORKDIR /app


RUN go get https://github.com/kalyani1217/go-projects/src
RUN cd /app && git clone https://github.com/kalyani1217/go-projects.git

RUN cd /app/go-projects/src && go build
EXPOSE 9001
ENTRYPOINT ["/app/go-projects/src/src"]


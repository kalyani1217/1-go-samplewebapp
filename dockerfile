
FROM golang:latest
RUN mkdir /app
WORKDIR /app
COPY . .
# RUN git init
# RUN git remote add origin https://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@github.com/kalyani1217/go-projects.git
# RUN git pull origin
# WORKDIR /app/go-projects/src
WORKDIR /app/src
RUN go mod init github.com/kalyani1217/go-projects
RUN go mod tidy
RUN go build
EXPOSE 9001
# ENTRYPOINT ["/app/go-projects/src/go-projects.exe"]
ENTRYPOINT ["/app/src/go-projects.exe"]


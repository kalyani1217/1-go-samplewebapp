FROM golang:latest as builder

# Set the Current Working Directory inside the container
WORKDIR /app
COPY go.mod ./


# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .
RUN go mod download
# Download all the dependencies
RUN go build -o main .

FROM gcr.io/distroless/base-debian11
COPY --from=builder /app/main .
# This container exposes port 8080 to the outside world
EXPOSE 9001

# Run the executable
CMD ["/main"]
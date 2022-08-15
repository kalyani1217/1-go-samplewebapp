FROM golang:1.10

# Set the Current Working Directory inside the container
WORKDIR $(system.defaultWorkingDirectory)

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go mod init system.defaultWorkingDirectory

# Install the package
RUN go install -v ./...

# This container exposes port 8080 to the outside world
EXPOSE 9001

# Run the executable
CMD ["src"]
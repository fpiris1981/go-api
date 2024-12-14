# Use the official Golang image as the base
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy Go source code into the container
COPY . .

# Cross-compile the Go binary for Linux
RUN GOOS=linux GOARCH=amd64 go build -o main .

# Expose port 8080 to allow access
EXPOSE 8080

# Run the compiled binary
CMD ["./main"]
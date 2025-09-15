FROM alpine:latest

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Switch to the non-root user
USER appuser

RUN apk add bash
ADD dummy.txt .

FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y wget gnupg2 software-properties-common build-essential nasm gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /app


WORKDIR /app

CMD ["bash"]
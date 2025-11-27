docker build -t libasm .
docker run -it -v $(pwd):/app libasm
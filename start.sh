docker stop xyzrouter
docker rm xyzrouter
docker build -t xyzrouter .
docker run -d --name xyzrouter -p 20128:20128 --env-file .env -v xyzrouter-data:/app/data xyzrouter
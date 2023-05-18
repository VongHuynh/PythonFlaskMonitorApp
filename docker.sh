docker stop monitoring-app | true
docker rm monitoring-app | true

until docker build -t monitoring-app .

do
  echo "Waiting build image..."
  sleep 2
done

docker run --rm -it -p 5000:5000 --name monitoring monitoring-app

echo "Run sucess"

default:
	docker build --no-cache . -t docker.io/haiku/irccat-resource:latest
push:
	docker push docker.io/haiku/irccat-resource:latest

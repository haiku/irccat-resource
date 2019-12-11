default:
	docker build --no-cache . -t docker.io/haiku/irccat-resource:latest
push:
	docker push docker.io/haiku/irccat-resource:latest
test:
	docker run docker.io/haiku/irccat-resource:latest /opt/resource/out '{"source":{"server":"https://google.com","message":"ha"}}'

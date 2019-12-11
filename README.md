IRCCat Notification Resource
===================================

[![Docker Pulls](https://img.shields.io/docker/pulls/haiku/irccat-resource.svg)](https://hub.docker.com/r/haiku/irccat-resource)

By default, Concourse will `check` your resources once per minute to see if they have updated.

Resource Type Configuration
---------------------------

```yaml
resource_types:
- name: irccat-resource
  type: docker-image
  source:
    repository: haiku/irccat-resource
    tag: latest
```
Source Configuration
--------------------

```yaml
resources:
- name: irccat
  type: irccat-resource
  source:
    server: irc.freenode.net
    port: 6667
    channel: "#cool-git"
```

Behavior
--------

### `out`: Push a message to an IRCCat server over HTTP

Create or delete a webhook using the configured parameters.

#### Parameters

```yaml
- put: irccat
  resource: irccat-resource
  params:
    message: howdy!
```

## Development
### Prerequisites
- [Docker](https://www.docker.com/)

### Making changes
The Concourse entrypoints are in `bin/check`, `bin/in`, and `bin/out`. You can add functionality to these files directly, or you can `require` additional supporing files.

### Building your changes
```shell
make
```

To use the newly built image, push it to a Docker repository which your Concourse pipeline can access and configure your pipeline to use it:

```shell
make push
```

### Contributing
Please read the [CONTRIBUTING.md](CONTRIBUTING.md) file to learn the process for submitting changes to this repo.

## License
This project is licensed under the MIT license.

## Reference
- [Implementing a Concourse Resource](https://concourse-ci.org/implementing-resource-types.html)
- [Concourse Community Resources](https://github.com/concourse/concourse/wiki/Resource-Types)

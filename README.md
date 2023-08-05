# docker raft

Emulate docker-compose CLI for Docker Swarm

Simply replace `docker compose up -d <service>` with `docker raft <service>`
in your deployment scripts. This command will deploy the service to run on your
docker swarm.

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
	- [exec](#exec)
	- [logs](#logs)
	- [deploy](#deploy)
- [FAQ](#faq)
- [License](#license)

## Features

- ✨ Easily `exec` into containers running on remote nodes.
- 📜 Easily tail logs of services running on remote nodes.
- 🐳 Deploy with the same environment variable substitutions as Docker Compose.

## Prerequisites

You need to have an existing Docker Swarm set up and running. See the
[official documentation](https://docs.docker.com/engine/swarm/) for details.

## Installation

```bash
# Ensure directory for Docker cli plugins exists
mkdir -p ~/.docker/cli-plugins

# Download docker-rollout script to Docker cli plugins directory
curl https://raw.githubusercontent.com/snth/docker-stack/main/docker-raft -o ~/.docker/cli-plugins/docker-raft

# Make the script executable
chmod +x ~/.docker/cli-plugins/docker-raft
```

Alternatively, you can use the provided install script for an interactively
guided install:

    bash <(curl -sS https://raw.githubusercontent.com/snth/docker-stack/main/install)

## Usage

Run `docker raft -p <NAME> COMMAND` instead of 
`docker compose -p <NAME> COMMAND`.

Hopefully the rest is self-explanatory from there.

	$ docker raft -h

	Usage: docker raft [OPTIONS] COMMAND [ARG...]

	Emulate the docker-compose CLI for Docker Swarm

	OPTIONS:
	-e, --env list              Set environment variables
	-h, --help                  Display command usage help
	-H, --host string           Override the service host
	-P, --port number           Port to connect to host on (default:2375)
	-p, --project-name string   Project(Stack) name
	-v, --verbose               Print verbose output

	COMMANDS:
	exec        Execute a command in a running container.
	logs        Fetch the logs of a container
	ls          List stacks.
	ps          List the tasks in the stack.
	services    List the services in the stack.

### exec

	$ docker raft exec -h

	Usage: docker raft [OPTIONS] exec [EXEC_OPTIONS] SERVICE [EXEC_ARGS...]

	Execute a command in a running service

	OPTIONS:
	-h, --help                  Display command usage help
	-H, --host string           Override the service host
	-P, --port number           Port to connect to host on (default:2375)
	-p, --project-name string   Project(Stack) name
	-v, --verbose               Print verbose output

	EXEC_OPTIONS
	-h, --help              Display command usage help
	-i, --interactive       Keep STDIN open even if not attached
	-t, --tty               Allocate a pseudo-TTY
	-u, --user string       Username or UID (format: "<name|uid>[:<group|gid>]")
	-w, --workdir string    Working directory inside the container


### logs

	$ docker raft logs -h

	Usage: docker raft [OPTIONS] logs [LOGS_OPTIONS] SERVICE [LOGS_ARGS...]

	Fetch the logs of a container

	OPTIONS:
	-h, --help                  Display command usage help
	-H, --host string           Override the service host
	-P, --port number           Port to connect to host on (default:2375)
	-p, --project-name string   Project(Stack) name
	-v, --verbose               Print verbose output

	LOGS_OPTIONS
	-h, --help              Display command usage help
		--details           Show extra details provided to logs
	-f, --follow            Follow log output
	-n, --tail string       Number of lines to show from the end of the logs (default "all")
	-t, --timestamps        Show timestamps

### deploy

## FAQ

### Why the name docker-raft?

Initially I called it docker-stack but then I learned of the Docker cli-plugins
functionality and this created a name collision.

I considered a number of options like *skiff* (a type of Duck Boat), *flock*
(possible confusion with the flocker plugin), *ship* (implies more stability
than this deserves), ...

In the end I settled on *raft* because:

  - A raft is a janky, floating vessel which you probably wouldn't want to rely
	on for production use.
  - Docker Swarm uses the Raft consensus algorithm under the hood.
  - A [floating group of
	ducks](https://misfitanimals.com/ducks/what-is-a-group-of-ducks-called/#:~:text=Interesting%20Duck%20Facts-,A%20Raft%20of%20Ducks,-A%20raft%20of)
	is sometimes called a raft.

## License

[Apache 2.0 License](LICENSE) &copy; Tobias Brandt

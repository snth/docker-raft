# docker-stack

Emulate docker-compose CLI for Docker Swarm

## Installation

Simply run

    bash <(curl -sS https://raw.githubusercontent.com/snth/docker-stack/main/install.sh)

## Usage

Run

    docker-stack -h

to see the help. Hopefully the rest is self-explanatory from there.

	$ docker-stack -h

	Usage: docker-stack [OPTIONS] COMMAND [ARG...]

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

	$ docker-stack exec -h

	Usage: docker-stack [OPTIONS] exec [EXEC_OPTIONS] SERVICE [EXEC_ARGS...]

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

	$ docker-stack logs -h

	Usage: docker-stack [OPTIONS] logs [LOGS_OPTIONS] SERVICE [LOGS_ARGS...]

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

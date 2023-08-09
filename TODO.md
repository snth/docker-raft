# TODO

  * DONE: add --verbose option which prints the commands below
  * DONE: parse only the arguments required at each command level
  * DONE: add install script
  * DONE: fix exec subcommand parsing
  * DONE: cleanup docs
  * DONE: add logs as a command
  * DONE: add example usage to the README
  * DONE: add the STACK name to the service filter (or use grep)
  * add deploy as a command
  * add rm as a command
  * add up and down as aliases for deploy and rm
  * use docker-compose to preprocess yaml files for deployment
  * check wether to use docker-compose or docker compose
  * add the -f desired-state=running filter
  * incorporate the ENV_ARGS
  * rename to docker-raft
  * add FAQ
  * don't preprocess parameters after --
  * possibly remove bashisms
  * correctly display name depending on whether called as a Docker CLI plugin or script.
  * add section on other notable projects
      * docker-rollout
      * docker-swarm-proxy
      * docker-cli-plugins https://github.com/SvenDowideit/docker-cli-plugins
      * docker-ex https://github.com/SvenDowideit/docker-cli-plugins/blob/master/docker-ex

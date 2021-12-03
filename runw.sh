echo "build and run for git-bash, which ruins the volume mount for docker"
docker build -t pip-audit .
./docker.sh run -v $PWD:/app -e PIP_AUDIT_LOGLEVEL=debug pip-audit -r requirements_for_safety.txt
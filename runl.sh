echo "build and run for linux, mac, etc"
docker build -t pip-audit .
docker run -v $PWD:/app -e PIP_AUDIT_LOGLEVEL=debug pip-audit -r requirements_for_safety.txt
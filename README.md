# pip_audit_in_docker
pip-audit in docker

Trying to run pip-audit in docker because it is unusably slow on windows.

Turns out it is unbearably slow in alpine too, 

`pip-audit -r requirements.txt` never finishes in my span of patience, but `pip-audit`
will finish (but it only scans the live venv, problematic if you got pip-audit installed
via pipx)
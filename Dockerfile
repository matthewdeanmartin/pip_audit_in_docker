FROM python:3.9-alpine
RUN pip install pip-audit
RUN mkdir -p app
# Thrashing, not sure why it fails
RUN chown root:root /app
RUN chown root:root /tmp
# pip-audit will install ccfi on 1st run, needs C++ etc.
RUN apk add --no-cache libffi-dev build-base
WORKDIR /app
ENTRYPOINT ["pip-audit"]
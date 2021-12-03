FROM python:3.9-alpine
RUN pip install pip-audit
RUN mkdir -p app
# Thrashing, not sure why it fails
RUN chown root:root /app
RUN chown root:root /tmp
WORKDIR /app
ENTRYPOINT ["pip-audit"]
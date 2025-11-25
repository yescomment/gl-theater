FROM owncast/owncast:latest

# Expose Owncast web UI/API and RTMP ingest.
EXPOSE 8080 1935

# Healthcheck lets DO App Platform restart the service if the API stops responding.
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD curl -fsS http://127.0.0.1:8080/api/admin/status || exit 1

# Use upstream entrypoint and command.

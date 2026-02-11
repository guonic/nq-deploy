# huggingface-cli 镜像
FROM python:3.11-slim

RUN pip install --no-cache-dir huggingface_hub[cli]

ENTRYPOINT ["huggingface-cli"]
CMD ["--help"]

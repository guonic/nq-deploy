#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
docker build -t huggingface-cli:latest -f docker/Dockerfile .

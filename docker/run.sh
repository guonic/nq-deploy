#!/usr/bin/env bash
# 用法示例:
#   ./run.sh                    # 显示 huggingface-cli 帮助
#   ./run.sh whoami             # 查看当前登录用户
#   ./run.sh download org/model # 下载模型（可加 -o /data 等）
#   ./run.sh login              # 交互式登录（会挂载 ~/.cache/huggingface）
set -e
cd "$(dirname "$0")/.."
docker run -it --rm \
  -v "${HOME}/.cache/huggingface:/root/.cache/huggingface" \
  -v "$(pwd):/data" -w /data \
  huggingface-cli:latest "$@"

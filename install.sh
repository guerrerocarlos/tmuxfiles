#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_file="${repo_dir}/.tmux.conf"
target_file="${HOME}/.tmux.conf"

if [[ ! -f "${source_file}" ]]; then
  echo "Missing ${source_file}" >&2
  exit 1
fi

if [[ -e "${target_file}" && ! -L "${target_file}" ]]; then
  backup_file="${target_file}.backup.$(date +%Y%m%d%H%M%S)"
  mv "${target_file}" "${backup_file}"
  echo "Backed up ${target_file} to ${backup_file}"
fi

ln -sfn "${source_file}" "${target_file}"
echo "Linked ${target_file} -> ${source_file}"

if [[ -n "${TMUX:-}" ]] && command -v tmux >/dev/null 2>&1; then
  tmux source-file "${target_file}"
  echo "Reloaded tmux configuration"
fi

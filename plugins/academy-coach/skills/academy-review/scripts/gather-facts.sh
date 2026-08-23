#!/usr/bin/env bash
set -euo pipefail

# Gather deterministic project facts for academy-review.
# Outputs compact JSON the review skill can reason over without reading raw files.

has_file() { [ -f "$1" ] && echo "true" || echo "false"; }
has_dir() { [ -d "$1" ] && echo "true" || echo "false"; }

count_lines() { [ -f "$1" ] && wc -l < "$1" | tr -d ' ' || echo "0"; }
count_entries() { [ -d "$1" ] && find "$1" -maxdepth 1 -mindepth 1 ! -name '.*' | wc -l | tr -d ' ' || echo "0"; }

# --- CLAUDE.md ---
claude_md_exists=$(has_file "CLAUDE.md")
claude_md_lines=$(count_lines "CLAUDE.md")

# --- .claude/ directory ---
claude_dir_exists=$(has_dir ".claude")
settings_exists="false"; hooks_count="0"; skills_count="0"; agents_count="0"
if [ "$claude_dir_exists" = "true" ]; then
  settings_exists=$(has_file ".claude/settings.json")
  hooks_count=$(count_entries ".claude/hooks")
  skills_count=$(count_entries ".claude/skills")
  agents_count=$(count_entries ".claude/agents")
fi

# --- .mcp.json ---
mcp_exists=$(has_file ".mcp.json")
mcp_valid="false"; mcp_servers="0"
if [ "$mcp_exists" = "true" ] && [ -s ".mcp.json" ]; then
  if command -v jq >/dev/null 2>&1; then
    if jq empty .mcp.json 2>/dev/null; then
      mcp_valid="true"
      mcp_servers=$(jq '.mcpServers // {} | length' .mcp.json 2>/dev/null || echo "0")
    fi
  elif command -v python3 >/dev/null 2>&1; then
    if python3 -c "import json; json.load(open('.mcp.json'))" 2>/dev/null; then
      mcp_valid="true"
      mcp_servers=$(python3 -c "import json; d=json.load(open('.mcp.json')); print(len(d.get('mcpServers',{})))" 2>/dev/null || echo "0")
    fi
  else
    mcp_valid="null"
  fi
fi

# --- git ---
git_exists="false"; git_has_commits="false"; git_commit_count="0"
if command -v git >/dev/null 2>&1 && git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git_exists="true"
  git_commit_count=$(git rev-list --count HEAD 2>/dev/null || echo "0")
  if [ "$git_commit_count" -gt 0 ] 2>/dev/null; then
    git_has_commits="true"
  fi
fi

# --- user-global ~/.claude/ ---
global_claude_exists=$(has_dir "${HOME:-}/.claude")
global_settings_exists="false"
if [ "$global_claude_exists" = "true" ]; then
  global_settings_exists=$(has_file "${HOME:-}/.claude/settings.json")
fi

cat <<EOF
{"claude_md":{"exists":$claude_md_exists,"lines":$claude_md_lines},"claude_dir":{"exists":$claude_dir_exists,"settings":$settings_exists,"hooks":$hooks_count,"skills":$skills_count,"agents":$agents_count},"mcp":{"exists":$mcp_exists,"valid":$mcp_valid,"servers":$mcp_servers},"git":{"exists":$git_exists,"commits":$git_commit_count,"has_commits":$git_has_commits},"global":{"claude_dir":$global_claude_exists,"settings":$global_settings_exists}}
EOF

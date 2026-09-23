#!/bin/bash
# PreToolUse guard for read-only agents (pr-reviewer, qa-tester):
# blocks commands that commit, push, merge, or write to GitHub.
cmd=$(jq -r '.tool_input.command // empty')
if echo "$cmd" | grep -Eq '(^|[;&|[:space:]])git[[:space:]]+(commit|push|merge|rebase|reset[[:space:]]+--hard)\b|gh[[:space:]]+(pr|issue)[[:space:]]+(comment|review|merge|edit|close|ready|create|reopen)\b|gh[[:space:]]+api\b.*(-X|--method)[[:space:]]*(POST|PATCH|PUT|DELETE)'; then
  echo "Blocked: this agent is read-only against git/GitHub (no commit, push, merge, or PR/issue writes). Report findings back instead." >&2
  exit 2
fi
exit 0

#!/usr/bin/env bash
# Track user prompt submissions

# Read JSON input from stdin
INPUT=$(cat)

# Parse the prompt and session_id fields
PROMPT=$(echo "$INPUT" | jq -r '.prompt // empty')
SESSION_ID=$(echo "$INPUT" | jq -r '.session_id // "unknown"')

# Skip if no prompt
[ -z "$PROMPT" ] && exit 0

# Log it with timestamp, session_id, and prompt (compact JSONL format)
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "$INPUT" | jq -c --arg ts "$TIMESTAMP" '{timestamp: $ts, session_id: .session_id, prompt: .prompt}' >> .claude/activity-logs/prompt_history.jsonl

exit 0
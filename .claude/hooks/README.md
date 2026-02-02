# Claude Hooks Setup Guide

This directory contains hook scripts to enhance your Claude CLI experience. **Configure these hooks before the next class.**

## Available Hooks

### 1. `track_prompts.sh` - Track Your Prompts
Automatically logs all your prompts with timestamps to `.claude/activity-logs/prompt_history.jsonl`

**Requirements:**
- **WSL/Linux:** `sudo apt install jq`
- **Windows:** `pip install jq`
- **Create required directory and file:**
  ```bash
  mkdir -p .claude/activity-logs
  touch .claude/activity-logs/prompt_history.jsonl
  ```

### 2. Audio Notifications (Choose One)

#### `sound_for_linux.py` - For WSL/Linux
Voice notification: "Task completed successfully"

**Requirements:**
```bash
sudo apt update
sudo apt install -y pulseaudio-utils alsa-utils espeak espeak-ng
```

#### `beep_for_windows.py` - For Windows
Simple beep sound (no installation needed)

## Quick Setup Guide

### For WSL/Linux Users:
```bash
# Install required packages
sudo apt update
sudo apt install -y jq pulseaudio-utils alsa-utils espeak espeak-ng

# Create required directory for prompt tracking
mkdir -p .claude/activity-logs
touch .claude/activity-logs/prompt_history.jsonl

# Configure hooks (use sound_for_linux.py)
```

### For Windows Users:
```bash
# Install jq for prompt tracking
pip install jq

# Create required directory for prompt tracking
mkdir .claude\activity-logs
type nul > .claude\activity-logs\prompt_history.jsonl

# Configure hooks (use beep_for_windows.py)
```

## Summary Table

| Environment | Audio Script | Required Packages |
|-------------|--------------|-------------------|
| WSL/Linux | `sound_for_linux.py` | `jq`, `pulseaudio-utils`, `alsa-utils`, `espeak`, `espeak-ng` |
| Windows | `beep_for_windows.py` | `jq` (via pip) |

---

**⚠️ Action Required: Configure these hooks before the next class!**

# Daily GitHub Context Check Prompt

## Purpose
This prompt helps verify if any context windows, documentation, or knowledge artifacts were already added to the GitHub repository today.

## Usage
Run this prompt at the start of each session to avoid duplicate captures.

---

## Daily Check Prompt

```
CHECK DAILY GITHUB CONTEXT STATUS

Please check if any of the following was already added to the GitHub repository today (today's date: $(date +%Y-%m-%d)):

REPOSITORY: maxlife11/self-improving-agent

FILES TO CHECK FOR TODAY'S DATE:
1. New files in captured_contexts/ directory
2. Commits made today
3. Updates to existing documentation (README.md, ARCHITECTURE.md, MISSION_CONTROL_BOARD.md, etc.)
4. New skill or knowledge artifacts

METHODS TO VERIFY:
- Check GitHub API for recent commits: https://api.github.com/repos/maxlife11/self-improving-agent/commits?since=$(date -u +%Y-%m-%d)T00:00:00Z
- Check GitHub API for recent file changes
- Review recent commits locally if repo is cloned

REPORT BACK:
- What was added/updated today (if anything)
- What context windows were captured
- Any gaps that need filling

EXAMPLE OUTPUT:
"Today (2026-09-26), the following were added:
- captured_contexts/Claude_Code_Harness_Integration_2026-09-26_14-30.txt
- captured_contexts/Board_Roles_2026-09-26_15-45.txt
- Updated README.md with new architecture section

No duplicate capture needed for these topics."

---

## Automated Check Script

You can also run this automated check:

```bash
#!/bin/bash
# daily_check.sh - Check what was added to GitHub today

REPO="maxlife11/self-improving-agent"
TOKEN="${GITHUB_TOKEN}"
TODAY=$(date -u +%Y-%m-%d)T00:00:00Z

echo "=== Checking GitHub for updates on $TODAY ==="

# Check recent commits
echo "Recent commits:"
curl -s -H "Authorization: token $TOKEN" \
  "https://api.github.com/repos/$REPO/commits?since=$TODAY&per_page=20" | \
  jq -r '.[] | "\(.sha[0:7]) \(.commit.author.date) \(.commit.message)"'

# Check for new files in captured_contexts
echo ""
echo "Files in captured_contexts (recent):"
curl -s -H "Authorization: token $TOKEN" \
  "https://api.github.com/repos/$REPO/contents/captured_contexts" | \
  jq -r '.[] | "\(.name) \(.size) bytes"'

echo ""
echo "=== Check complete ==="
```

---

## Quick One-Liner

```bash
curl -s -H "Authorization: token $GITHUB_TOKEN" \
  "https://api.github.com/repos/maxlife11/self-improving-agent/commits?since=$(date -u +%Y-%m-%d)T00:00:00Z" | \
  jq -r '.[] | "\(.sha[0:7]) \(.commit.author.date) \(.commit.message)"'
```

---

## In-Chat Usage

When starting a new chat session, simply ask:

> "Please check the GitHub repo maxlife11/self-improving-agent for any updates made today (2026-09-26). What context windows or documentation were already captured?"

This will leverage the GitHub API access to verify what's already been added.
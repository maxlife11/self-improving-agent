# GitHub Context Check - Daily Prompt

## Quick Commands

### Check commits made today (2026-09-26)
```bash
curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/repos/maxlife11/self-improving-agent/commits?since=$(date -u +%Y-%m-%d)T00:00:00Z" | jq -r '.[] | "\(.sha[0:7]) \(.commit.author.date[:19]) \(.commit.message)"'
```

### Check files in captured_contexts directory
```bash
curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/repos/maxlife11/self-improving-agent/contents/captured_contexts" | jq -r '.[].name'
```

### One-liner to check all today's updates
```bash
echo "=== Today's commits ===" && curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/repos/maxlife11/self-improving-agent/commits?since=$(date -u +%Y-%m-%d)T00:00:00Z" | jq -r '.[] | "\(.sha[0:7]) | \(.commit.message)"' && echo "=== Files in repo ===" && curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/repos/maxlife11/self-improving-agent/contents" | jq -r '.[].name'
```

---

## In-Chat Prompt for Me to Execute

**Ask me to run this check:**

> Me: Please check what was added to maxlife11/self-improving-agent GitHub repository today (today's date: 2026-09-26). Show me:
> 1. All commits made today with their hashes and messages
> 2. Files in the captured_contexts/ directory
> 3. Whether there are any conflicts with what I'm about to add

---

## Summary of Today's Updates

**Commits added today (2026-09-26):**
1. `dae55a3` - Add context capture system (capture_context.sh, check_daily_updates.md, context_template.md)
2. `36e7265` - Add comprehensive architecture documentation for Agent Ecosystem v1.0
3. `ef4b351` - Initial commit: Claude Code Harness + Hermes + AbacusAI integration documentation

**Files now in repository:**
- README.md (23KB) - Comprehensive AI Agent Ecosystem Architecture
- ARCHITECTURE.md (15KB) - Detailed architecture overview
- MISSION_CONTROL_BOARD.md (22KB) - Board of Directors governance model
- SKILL.md (20KB) - Skills documentation
- claude_harness_integration.md (5KB) - Claude Code Harness integration
- LICENSE (MIT)
- .gitignore
- capture_context.sh (new)
- check_daily_updates.md (new)
- context_template.md (new)

---

## For Future Sessions

Before starting a new session, use this prompt:

> "Check GitHub repo maxlife11/self-improving-agent for changes made today. Then proceed with the session knowing what's already been captured."

This will ensure:
- No duplicate content is saved
- Context is properly archived
- GitHub repository stays current
- Each session builds on previous work
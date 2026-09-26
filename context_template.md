# Chat Context Template

## Context Window Format

Each chat context window should be captured as a minimal, composable piece of information that can be reassembled into larger contexts.

### Structure

```json
{
  "id": "uuid-v4",
  "timestamp": "ISO-8601 datetime",
  "title": "Short descriptive title",
  "summary": "Concise 1-2 sentence summary",
  "keywords": ["array", "of", "key", "terms"],
  "content": "The actual condensed content",
  "references": ["existing-context-ids-if-applicable"],
  "author": "Chat GPT or specific agent name",
  "version": 1
}
```

### Example

```json
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "timestamp": "2026-09-26T14:30:00Z",
  "title": "Claude Code Harness Integration Analysis",
  "summary": "Analysis of integrating free-claude-code proxy with Hermes agents on AbacusAI supercomputer",
  "keywords": ["integration", "ai", "agents", "claude", "hermes", "abacusai", "supercomputer"],
  "content": "The integration combines free-claude-code proxy (routes to 50+ free tier providers) with Hermes agents on AbacusAI SuperComputer infrastructure. Key benefit: cost-effective AI agent workflows leveraging 1.3B+ free tokens/month. Architecture: proxy sits between Claude Code and providers, automatic failover when tiers exhaust.",
  "references": ["context-2026-09-25-ai-integration", "context-2026-09-26-enterprise-architecture"],
  "author": "Claude",
  "version": 1
}
```

## Capture Guidelines

### When to Capture

1. **After major decisions** - Document key decisions made
2. **Configuration changes** - Record important config changes
3. **Integration points** - Capture API endpoints and protocols
4. **Performance observations** - Note important metrics or optimizations
5. **Problem solved** - Document solutions to complex problems
6. **Dependencies** - Record important dependencies and assumptions

### How to Compactly

1. **Use bullet points** instead of continuous prose
2. **Extract key facts** - date, version, endpoint, config value
3. **Include only essentials** - no filler words
4. **Use abbreviations** where clear (URL, ID, etc.)
5. **Reference other contexts** instead of duplicating

## Storage Locations

- GitHub: `captured_contexts/` directory
- Daily logs: `/var/minis/memory/YYYY-MM-DD.md`
- Global knowledge: `/var/minis/shared/knowledge/` directory

## Retrieval Query Format

To find contexts added today:

```bash
# Using GitHub API
curl -s -H "Authorization: token $GITHUB_TOKEN" \
  "https://api.github.com/repos/maxlife11/self-improving-agent/contents/captured_contexts" \
  | jq -r '.[].last_modified' | grep "$(date +%Y-%m-%d)"
```
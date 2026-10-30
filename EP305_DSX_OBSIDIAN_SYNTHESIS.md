# Synthesis: Mr. Buzzoni's X Post — Steph Ango (Obsidian CEO) GitHub Release

## Source
X Post: https://x.com/mr_buzzoni/status/2115697390326079625
Published: 2026-10-29

## Tweet Content (Digest)

> "one year at Stanford costs more than $60,000
> the CEO of Obsidian put his second brain setup on GitHub for $0

> Steph Ango shared his vault, his theme and his agent skills: 7 repos, 77,106 stars. the vault template alone is a f*cking masterclass
>
> • layer 1: the vault
> > kepano-obsidian - his personal…"

## Key Finding

**The CEO of Obsidian (Steph Ango) released his personal knowledge system (vault) to GitHub for $0, including themes and agent skills.**

- 7 repos total
- **77,106 stars combined**
- Vault template alone: ~4,709 stars (masterclass)

## Repos Analyzed (from kepano)

### 1. **kepano/obsidian-skills** — 50,407 stars ⭐⭐⭐⭐⭐
- **Description**: Agent skills for Obsidian. Teach your agent to use Obsidian CLI and open formats including Markdown, Bases, JSON Canvas.
- **Topics**: agents, agentskills, bases, claude, clawdbot, cli, codex, defuddle, hermes, jsoncanvas, knap, markdown, md, obsidian, openclaw, opencode, skills
- **Created**: 2026-01-02 | **Updated**: 2026-10-30
- **Skills included**:
  - **obsidian-markdown**: Create/edit ODF Markdown (wikilinks, embeds, callouts, properties)
  - **obsidian-bases**: Create/edit Obsidian Bases (`.base`) with views, filters, formulas
  - **json-canvas**: Create/edit JSON Canvas (`.canvas`) with nodes/edges/groups
  - **obsidian-cli**: Interact with Obsidian vaults via Obsidian CLI (read/create/search, tasks, properties, plugin/theme dev)
  - **defuddle**: Extract clean markdown from web pages (remove clutter)
  - **knap**: Render Markdown templates from JSON/CSV data (batch file generation)
- **Significance**: This is THE agent-native knowledge layer. Connects Obsidian directly to AI agents.

### 2. **kepano/kepano-obsidian** — 4,709 stars ⭐⭐⭐
- **Description**: My personal Obsidian vault template. A bottom-up approach to note-taking and organizing things I'm interested in.
- **Topics**: markdown, obsidian, obsidian-md, obsidian-vault
- **Created**: 2023-09-12 | **Updated**: 2026-10-29
- **Significance**: "Layer 1: the vault" — the masterclass vault template.

### 3. **kepano/defuddle** — 9,822 stars ⭐⭐⭐⭐⭐
- **Description**: Get the main content of any page as Markdown.
- **Topics**: (from list) defuddle
- **Significance**: Token-efficient web ingestion → clean markdown for Obsidian.

### 4. **kepano/obsidian-minimal** — 5,462 stars ⭐⭐⭐⭐
- **Description**: A distraction-free and highly customizable theme for Obsidian.
- **Significance**: Visual/theme layer of knowledge system.

### 5. **kepano/flexoki** — 3,734 stars ⭐⭐⭐
- **Description**: An inky color scheme for prose and code.
- **Significance**: Color/theme layer.

### 6. **kepano/40-questions** — 1,703 stars ⭐⭐⭐
- **Description**: Questions that I ask myself at the end of each year and each decade.
- **Significance**: Reflection/journaling layer.

### 7. **kepano/clipper-templates** — 1,490 stars ⭐⭐⭐
- **Description**: Obsidian Web Clipper templates for various sites.
- **Significance**: Capture layer for web content.

## Cross-Repo Synthesis

### The Stack (Knowledge Layer → Agent Layer → Application)

```
LAYER 1: THE VAULT (kepano-obsidian) — 4,709 stars
    └─ Obsidian vault template, bottom-up approach

LAYER 2: THE THEME (obsidian-minimal, flexoki) — 9,196 stars combined
    └─ Distraction-free theme + inky color scheme

LAYER 3: THE SKILLS (obsidian-skills) — 50,407 stars ⭐
    └─ Agent skills to USE the vault: CLI, Markdown, Bases, JSON Canvas, Defuddle, Knap

LAYER 4: THE INGESTION (defuddle, clipper-templates) — 11,312 stars combined
    └─ Web → Markdown → Obsidian

LAYER 5: THE REFLECTION (40-questions) — 1,703 stars
    └─ Self-reflection prompts
```

### Total: ~77,106 stars across 7 repos

## Integration with Digital Factory

### Knowledge Layer Mapping
- **Obsidian vault** → Existing Knowledge Layer (Obsidian)
- **obsidian-skills** → Now agent-native (Agent Skills for Obsidian)
- **defuddle** → Token-efficient web ingestion for agent research
- **obsidian-cli** → Agent can interact with vault programmatically
- **knap** → Template-based vault content generation (batch)

### Strategic Implications
1. **Knowledge Layer is agentic now** — not just human notes; agents can use it via CLI/Bases/JSON Canvas
2. **Community validated** — 77K stars proves demand for "second brain" + agent integration
3. **Token efficiency** — defuddle + markdown skills reduce token bloat for agent context
4. **Open source** — MIT license, community-driven; aligns with open-source agent ecosystem

### Connection to Digital Factory
- The Digital Factory's Knowledge Layer now has a validated, agent-native reference implementation (obsidian-skills)
- Could be integrated into the agent ecosystem's knowledge base
- Could be referenced in the Self-Improvement Skill / Board governance
- Aligns with "Knowledge Layer (Obsidian)" from mission control board

---

## Next Steps
1. Integrate obsidian-skills into Digital Factory's agent knowledge workflows
2. Evaluate obsidian-skills compatibility with OpenClaw/Hermes agents (topics include hermes, openclaw, claude, codex, opencode)
3. Leverage defuddle for token-efficient agent web research
4. Reference kepano-obsidian vault template for vault structure best practices

---
*Sources: X post by Mr. Buzzoni, GitHub API data for kepano repos, obsidian-skills README/SKILL content*

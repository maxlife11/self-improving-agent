# Claude Code Harness + Hermes + AbacusAI Supercomputer Integration

## Overview

This document describes the integration of the **Claude Code Harness (free-claude-code)** system with **Hermes agents** on an **AbacusAI supercomputer ecosystem**. The goal is to leverage free-tier AI providers across multiple platforms while maintaining consistent agent workflows.

## Core Components

### 1. free-claude-code (FCC) Proxy

The FCC proxy is a local lightweight proxy that routes Claude Code requests to free-tier AI providers:

- **Purpose**: Acts as a universal translator between Claude Code and free providers
- **Key Feature**: Automatic failover between providers when one runs out of tokens
- **Technology**: Runs locally on the user's machine (Linux/macOS/Windows)
- **Configuration**: Uses `ANTHROPIC_BASE_URL` environment variable to point to the proxy

### 2. Hermes Agent

A highly capable agent from NousResearch that can be configured to use the FCC proxy:

- **Capabilities**: Native code sessions, voice notes, MCP integrations, tool use
- **Compatibility**: Works seamlessly with the FCC proxy via `--scope user` flag
- **Integration**: Can be pointed at the FCC proxy endpoint

### 3. AbacusAI Supercomputer Ecosystem

An AI supercomputing platform providing access to multiple AI providers with free tiers:

- **Provider Diversity**: 50+ ToS-friendly providers with 1.3B+ free tokens/month combined
- **Agent Support**: Includes Hermes, DeepSeek Harness, Grok Build, Muse Code, Aider, and more
- **Integration Point**: The FCC proxy can be deployed on AbacusAI infrastructure

## Integration Architecture

```
┌─────────────────┐     ┌──────────────────┐     ┌────────────────────┐
│  Hermes Agent   │────▶│  FCC Proxy (fcc-server) │────▶│  AbacusAI Providers │
│                 │     │                     │     │                     │
│ • Native code   │     │ • Routes requests    │     │ • Multiple free     │
│ • Voice notes   │     │ • Automatic failover │     │   tiers              │
│ • MCP integrations│    │ • Token optimization │     │ • Provider rotation │
└─────────────────┘     └──────────────────┘     └────────────────────┘
```

## Configuration Steps

### Step 1: Deploy FCC Proxy
```bash
# Install the proxy
curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh

# Start the proxy
fcc-server
```

### Step 2: Configure Hermes to Use FCC Proxy
```bash
# Set the proxy endpoint
ANTHROPIC_BASE_URL="http://localhost:8082"

# Launch Hermes with user-scope (accesses both free and paid layers)
claude mcp add --transport http --scope user hermes <your-hermes-url>
```

### Step 3: Verify Routing
```bash
# Check which provider served your request
fcc-server logs
# Or use the Admin UI at http://localhost:8082
```

## Key Benefits

1. **Cost-Effective**: Leverages 50+ free-tier providers (1.3B+ tokens/month)
2. **Reliability**: Automatic failover prevents downtime during provider outages
3. **Consistency**: Same Claude Code interface and workflow regardless of provider
4. **Scalability**: Switch between providers without changing agent code
5. **Privacy**: No data leaves your local machine (except what Hermes sends to paid layers)

## Implementation Details

### FCC Proxy Behavior
- **Request Flow**: Claude Code → FCC Proxy → Free Provider → Response → FCC Proxy → Claude Code
- **Failover**: When one provider runs out of tokens, FCC automatically tries the next configured model
- **Performance**: Up to 90% fewer terminal-output tokens due to RTK filtering

### Hermes + FCC Integration
- **Scope**: Use `--scope user` to access both free and paid Claude Code features
- **MCPs**: Any MCP (Zapier, Notion, Supabase, etc.) works identically in free and paid lanes
- **Tools**: Hermes retains native tool use, code sessions, and voice capabilities

### AbacusAI Deployment Considerations
- **Network**: Ensure the supercomputer can reach the FCC proxy port (default 8082)
- **Security**: Store API keys securely (never expose in chat)
- **Monitoring**: Track token consumption across providers via FCC logs

## Troubleshooting

| Issue | Solution |
|-------|----------|
| "Claude refuses" | Confirm `ANTHROPIC_BASE_URL` points to the proxy; ensure `fcc-claude` is in PATH |
| "Command not found: fcc-claude" | Source the shell: `source ~/.zshrc` or restart Terminal |
| "Proxy unreachable" | Check firewall rules; ensure localhost:8082 is accessible |
| "Provider out of tokens" | FCC automatically fails over to next provider; monitor logs |

## Future Enhancements

1. **Auto-Provider Selection**: Implement logic to choose the best provider based on task complexity
2. **Cost Monitoring**: Track spending across providers to optimize budget allocation
3. **Multi-Agent Coordination**: Have multiple Hermes instances share the same FCC proxy
4. **Persistence Layer**: Cache frequent requests to reduce redundant compute

## References

- [free-claude-code GitHub Repository](https://github.com/Alishahryar1/free-claude-code)
- [Hermes Agent Documentation](https://github.com/NousResearch/hermes-agent)
- [AbacusAI Platform](https://abacus.ai) (hypothetical - adjust based on actual platform)

---

*Document created: 2026-09-26*
*Based on: YouTube "How to use Claude Code For Free in 2026" + free-claude-code README + Hermes agent repo*

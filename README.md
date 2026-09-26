# Claude Code Harness Integration

This repository contains documentation for integrating the free-claude-code proxy system with Hermes agents on AbacusAI supercomputer infrastructure.

## Documentation

- [`claude_harness_integration.md`](claude_harness_integration.md) - Detailed integration guide
- [`README.md`](README.md) - This file

## Setup Instructions

1. Install the FCC proxy:
```bash
curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh
```

2. Start the proxy:
```bash
fcc-server
```

3. Configure Hermes to use the proxy:
```bash
ANTHROPIC_BASE_URL="http://localhost:8082"
# Then run your Hermes agent with appropriate scope settings
```

4. Verify integration:
```bash
fcc-server logs
# Or check the Admin UI at http://localhost:8082
```

## Integration Benefits

- Cost-effective AI agent development using free-tier providers
- Automatic failover between providers during token exhaustion
- Consistent workflow across different AI providers
- Maintains full Hermes agent capabilities

## Support

For questions or issues, please open an issue in this repository.
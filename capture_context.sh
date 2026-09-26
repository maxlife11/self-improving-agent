#!/bin/bash
# Context Capture Script for Claude Code Harness + Hermes + AbacusAI Integration
# Captures condensed/compacted versions of chat context windows
# Saves them to the GitHub repository

set -e

# Configuration
REPO_URL="https://github.com/maxlife11/self-improving-agent"
BRANCH="master"
CONTEXT_DIR="./captured_contexts"
DATE=$(date +%Y-%m-%d_%H-%M)

# Create context directory if it doesn't exist
mkdir -p "$CONTEXT_DIR"

# Function to capture a context window
capture_context() {
    local title="$1"
    local content="$2"
    
    # Create a timestamped file
    local filename="${CONTEXT_DIR}/${title}_${DATE}.txt"
    
    # Write the context with minimal formatting
    cat > "$filename" << EOF
# Context Window: ${title}
# Generated: $(date)

${content}
EOF
    
    echo "Captured: ${title} -> ${filename}"
}

# Example usage - capture key contexts
# These are examples of what to capture:
# 1. Recent conversation summaries
# 2. Important decisions made
# 3. Critical decisions or approvals
# 4. Key architecture decisions
# 5. Performance metrics and observations

# Capture the current integration overview
capture_context "Claude Code Harness + Hermes + AbacusAI Integration" \
    "The integration combines free-claude-code proxy with Hermes agents on Abacus AI supercomputer, featuring Mission Control orchestration and Board of Directors governance."

# Capture the architecture overview
capture_context "System Architecture" \
    "Three-layer architecture: OpenMinis (local/mobile), Hermes Agents (cloud), Mission Control (orchestration). Board of Directors governs quality, performance, and safety."

# Capture the mission control board roles
capture_context "Board of Directors Roles" \
    "Six specialized agents: Challenge (QA), Audit (compliance), Optimize (performance), Scale (fleet mgmt), Security (threat detection), Quality (standards)."

# Capture the integration documentation
capture_context "Integration Documentation" \
    "Documentation covers: CLAUDE_HARNESS_INTEGRATION.md, MISSION_CONTROL_BOARD.md, ARCHITECTURE.md, SKILL.md, CLAUDE_HARNESS_INTEGRATION.md"

echo ""
echo "Context capture complete. Files saved to: $CONTEXT_DIR"
echo "Total files captured:"
ls -la "$CONTEXT_DIR/"
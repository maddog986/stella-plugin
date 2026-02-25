#!/bin/bash
# Stella Plugin Setup
# Connects your Claude Code to Stella's knowledge brain via OAuth
#
# Prerequisites:
#   - Claude Code CLI installed (claude command available)
#   - Stella credentials from Drew (client ID + secret)
#
# Usage:
#   ./setup.sh

set -e

echo ""
echo "  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "  ~  Stella Plugin Setup  ~"
echo "  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
echo "  This connects your Claude Code to Stella's knowledge brain."
echo "  You'll need your client ID and secret from Drew."
echo ""

# Check claude CLI exists
if ! command -v claude &> /dev/null; then
    echo "  ERROR: 'claude' command not found."
    echo "  Install Claude Code first: https://docs.anthropic.com/en/docs/claude-code"
    exit 1
fi

# Get client ID
read -p "  Client ID (e.g., stella-drew): " CLIENT_ID

if [ -z "$CLIENT_ID" ]; then
    echo "  ERROR: Client ID is required."
    exit 1
fi

echo ""
echo "  Registering Stella MCP server..."
echo "  (You'll be prompted for your client secret — input is masked)"
echo ""

# Register MCP server globally
# --client-secret flag prompts for masked input
# Secret stored in OS credential store (keychain/credential manager)
claude mcp add \
    --transport http \
    --client-id "$CLIENT_ID" \
    --client-secret \
    --callback-port 8090 \
    stella \
    "https://mcp.imstella.ai/mcp/"

echo ""
echo "  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "  ~  Setup complete!  ~"
echo "  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
echo "  Stella MCP registered globally — available in all projects."
echo ""
echo "  Next steps:"
echo "    1. Open Claude Code in any project"
echo "    2. Run /mcp to verify 'stella' is listed"
echo "    3. First connection triggers browser OAuth (one-time)"
echo "    4. After that, it's automatic"
echo ""
echo "  Try: /wake to bring Stella online"
echo ""

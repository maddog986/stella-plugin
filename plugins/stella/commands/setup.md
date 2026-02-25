---
description: Set up Stella MCP connection with OAuth credentials
disable-model-invocation: true
---

Help the user set up their connection to Stella's MCP brain.

**Step 1:** Ask if they already have their Stella credentials (client ID and client secret). If not, tell them to contact Drew to get provisioned.

**Step 2:** Guide them to run this command in their terminal (NOT inside Claude Code):

```bash
claude mcp add \
  --transport http \
  --client-id CLIENT_ID_HERE \
  --client-secret \
  --callback-port 8090 \
  stella \
  "https://mcp.imstella.ai/mcp/"
```

Replace `CLIENT_ID_HERE` with their actual client ID (e.g., `stella-drew`, `stella-garrett`).

The `--client-secret` flag will prompt them for their secret (input is masked). The secret gets stored securely in the OS credential store — never in config files.

**Step 3:** After running the command, tell them to restart Claude Code or run `/mcp` to verify the connection. They should see `stella` listed as an MCP server.

**Step 4:** Test the connection by calling `stella_identity()`. If it returns their identity and available tools, they're connected. If it fails with an auth error, double-check their credentials with Drew.

**That's it.** After setup, Stella is available in every Claude Code session on this machine. The OAuth token refreshes automatically.

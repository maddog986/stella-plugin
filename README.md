# Stella Plugin

Stella is an AI knowledge partner with persistent memory, semantic search, and relationship awareness. This plugin connects Claude Code to Stella's brain via MCP with OAuth-scoped access.

Same Stella. Any machine. Your identity determines what you can access.

## Quick Start

### 1. Get your credentials

Contact Drew for your client ID and secret. Each user gets unique credentials tied to their identity and trust level.

### 2. Clone and set up

```bash
git clone https://github.com/maddog986/stella-plugin.git
cd stella-plugin
chmod +x setup.sh
./setup.sh
```

The setup script registers Stella as a global MCP server in Claude Code. Your client secret is stored securely in the OS credential store — never in config files.

### 3. Connect

Open Claude Code in any project. Run `/mcp` to verify Stella is listed. The first connection triggers a browser-based OAuth flow (one-time). After that, authentication is automatic.

### 4. Use

- `/wake` — Bring Stella online after a context compact
- `/setup` — Re-run setup if needed

Once connected, Claude has access to Stella's knowledge graph, relationship memory, and session tools — scoped to your identity.

## What You Get

| Capability | What it does |
|-----------|-------------|
| `knowledge_query` | Semantic search across indexed knowledge |
| `knowledge_synthesize` | RAG-powered deep answers |
| `config_recall` | Recall relationship and people knowledge |
| `coord_session_note` | Save context that persists between sessions |
| `gam_list_nodes` | Discover all available tools |

Your trust level determines which tools are visible. The server handles scoping — no client-side configuration needed.

## How It Works

```
Your Machine                           VPS
┌─────────────────┐                ┌───────────────────┐
│ Claude Code      │── OAuth 2.1 ──│ Stella MCP Server  │
│ + stella plugin  │   (PKCE)      │ (knowledge, memory,│
│   (skills,       │               │  search, sessions) │
│    commands)     │               └───────────────────┘
└─────────────────┘
     mcp.imstella.ai
```

- **Plugin** provides behavioral context (skills, commands, identity)
- **Server** provides the brain (knowledge graph, memory, search)
- **OAuth** handles identity — your credentials map to a trust level that scopes tool access

## Access Levels

| Trust | What you can do |
|-------|----------------|
| full | Everything — all tools, all knowledge, admin |
| friend | Search knowledge, recall people, add session notes |
| known | Read-only knowledge access |

## Requirements

- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed
- Stella credentials (from Drew)

## License

Private. Access by invitation only.

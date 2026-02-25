---
name: tfb-knowledge
description: How to search TFB project knowledge, look up clients and contacts, and navigate the analytics system. Use when answering questions about TFB projects, people, or data.
---

# TFB Knowledge System

Stella has a searchable knowledge graph with project docs, client context, and analytics data. Everything flows through MCP tools.

## Searching Project Knowledge

```
knowledge_query(topic="email campaign performance")         # Default search
knowledge_query(topic="inlet data connectors", depth=2)     # Deep search
knowledge_related(section_id=42)                            # Find connected docs
knowledge_synthesize(topic="HubSpot integration approach")  # Synthesized answer
```

**Search depth:**
- `depth=0` — Quick keyword lookup
- `depth=1` — Balanced (default, good for most questions)
- `depth=2` — Deep semantic search (use for complex questions)

**Always search before answering.** If the question is about TFB projects, clients, or data — search first. It's better to say "I didn't find anything on that" than to guess.

## Looking Up People & Contacts

```
config_recall(person="garrett")                             # Everything about Garrett
config_recall(person="garrett", context="email campaigns")  # Contextual recall
config_recall(person="drew", facet="collab")                # Specific facet
```

Use this when someone mentions a name, client, or contact. The system accumulates knowledge about people over time from all team interactions.

## Leaving Breadcrumbs

When the conversation hits a key moment — a decision, an insight, an action item:

```
coord_session_note(note="Decided to switch from weekly to daily email digests for Anthony Trucks")
```

These notes get processed between sessions and become part of the team's shared knowledge. The more you note, the smarter Stella gets for everyone.

## Discovery

Don't know what tools are available? Ask:

```
gam_list_nodes()                           # See all available tools
gam_node_info(node="knowledge.query")      # Full docs for a specific tool
```

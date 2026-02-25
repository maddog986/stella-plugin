---
name: knowledge
description: How to search, store, and navigate Stella's knowledge graph. Use when answering questions, looking up context, or storing new information.
---

# Knowledge System

Stella has a searchable knowledge graph with semantic search, relationship memory, and gravity-ranked results. Everything flows through MCP tools. Your access level depends on your identity — the server scopes what you can see and do.

## Searching

```
knowledge_query(topic="architecture decisions")           # Default search
knowledge_query(topic="how does auth work?", depth=2)     # Deep semantic search
knowledge_related(section_id=42)                          # Find connected docs
knowledge_synthesize(topic="MCP session handling")        # RAG-powered synthesis
```

**Search depth matters:**
- `depth=0` — 80% keyword (exact lookup, fast)
- `depth=1` — balanced (default, good for most queries)
- `depth=2` — 70% semantic, two-pass drilling (deep research)
- `depth=3` — divergent cross-domain discovery

**Always search before answering.** If the question is about something Stella should know, search first. "I don't know" is better than a confident wrong answer.

## People & Relationships

```
config_recall(person="drew")                               # Everything about Drew
config_recall(person="garrett", context="email campaigns") # Contextual recall
config_recall(person="drew", facet="collab")               # Specific facet
```

Relationships are scoped — you can recall knowledge about people you have access to.

## Session Memory

During conversations, capture important context:

```
coord_session_note(note="Drew prefers X approach for Y reason")
coord_session_note(note="Decided to use React for the dashboard")
```

Session notes get metabolized into long-term memory between sessions. This is how Stella learns from conversations without needing transcripts.

## Discovery

```
gam_list_nodes()                       # See all available tools (scoped to your access)
gam_node_info(node="knowledge.query")  # Full parameter docs for a tool
```

The tools you see depend on your identity and trust level. If a tool isn't listed, you don't have access to it.

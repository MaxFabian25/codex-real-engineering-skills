# Codex Real Engineering Skills

This context defines the release and packaging language for the Codex Real Engineering Skills repository.

## Language

**Codex Marketplace**:
A repository-level catalog that Codex can register with `codex plugin marketplace add`.
_Avoid_: Skill folder, plugin cache

**Plugin Bundle**:
The installable Codex plugin under `plugins/codex-real-engineering-skills/`.
_Avoid_: Marketplace root, skill root

**Skill Pack**:
The set of workflow skills exposed by the plugin bundle.
_Avoid_: App, MCP server

**Upstream Source**:
Matt Pocock's original MIT-licensed `skills` repository.
_Avoid_: Vendor copy, private source

**Public Release**:
The repository state that is safe to make visible on GitHub.
_Avoid_: Local install, cache refresh

## Relationships

- A **Codex Marketplace** contains one **Plugin Bundle** in this repository.
- The **Plugin Bundle** exposes one **Skill Pack**.
- The **Skill Pack** is adapted from the **Upstream Source**.
- A **Public Release** requires clear attribution, install instructions, privacy notes, and security reporting guidance.

## Example dialogue

> **Dev:** "Can I install the **Skill Pack** directly from this repo?"
> **Domain expert:** "Install the **Codex Marketplace**. Codex will hydrate the **Plugin Bundle** and expose the namespaced skills."

## Flagged ambiguities

- "Repo install" previously meant both direct skill-root copying and marketplace registration. Resolved: public installation means registering the **Codex Marketplace**.

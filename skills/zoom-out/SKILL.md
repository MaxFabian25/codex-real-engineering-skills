---
name: zoom-out
description: Map unfamiliar code at system level. Use when explaining modules, callers, domain terms, or architecture.
---

# Zoom Out

Go up one layer of abstraction. Give the user a map of the relevant modules and callers, using the project's domain glossary vocabulary when it exists.

Include:

- the main concepts and where they live;
- the public interfaces or entry points;
- important callers and downstream effects;
- ADRs or docs that explain why the area has its current shape;
- what to inspect next if the user wants to change it.

Do not implement changes while zooming out unless the user explicitly asks for implementation afterward.
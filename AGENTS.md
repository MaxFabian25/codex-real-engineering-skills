# Repository Instructions

## Public Release Contract

This repository is a public Codex plugin marketplace. Preserve the root marketplace entrypoint at `.agents/plugins/marketplace.json` and the plugin bundle at `plugins/codex-real-engineering-skills/`.

Do not reintroduce direct `~/.codex/skills` or `~/.agents/skills` install instructions as the primary path. Public installation should use:

```bash
codex plugin marketplace add MaxFabian25/codex-real-engineering-skills
```

## Documentation Authority

Use these prose files as the release authority before adding automation:

- `CONTEXT.md` defines repository terms.
- `docs/adr/` records durable packaging decisions.
- `docs/release-checklist.md` defines public release checks.
- `NOTICE.md`, `PRIVACY.md`, and `SECURITY.md` define public-facing legal, privacy, and reporting boundaries.

Use scripts only for deterministic mechanics. Do not make generated indexes, validators, or hidden scripts the policy authority for this repository.

## Change Discipline

Prefer hard cutovers. Remove stale install routes or metadata instead of keeping compatibility shims.

When changing plugin packaging, verify all of:

- `.agents/plugins/marketplace.json` parses as JSON.
- `plugins/codex-real-engineering-skills/.codex-plugin/plugin.json` parses as JSON.
- The plugin bundle contains the expected skill entrypoints.
- A git-backed Codex marketplace install exposes the namespaced skills in `codex debug prompt-input`.

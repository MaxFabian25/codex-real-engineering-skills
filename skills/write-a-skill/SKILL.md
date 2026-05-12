---
name: write-a-skill
description: Draft or update Codex skills. Use when creating, adapting, improving, packaging, or validating skills.
---

# Write A Skill

Prefer the built-in `$skill-creator` workflow when it is available. This skill is a compact creation checklist for sessions where the user invokes this adapted pack directly.

## Codex Interaction

When requirements are unclear, ask the smallest useful question. Use `request_user_input` when there are two or three concrete choices such as destination, resource type, or validation depth. If unavailable, ask one concise plain-text question.

## Process

1. Clarify the target task, concrete example prompts, expected outputs, and install location. Default to `$CODEX_HOME/skills`, falling back to `~/.codex/skills` when `CODEX_HOME` is unset.
2. Plan only reusable material Codex actually needs: `SKILL.md`, optional one-level `references/`, deterministic `scripts/`, or output `assets/`.
3. Initialize new skills with the local `skill-creator` helper when available. Otherwise create the required folder shape manually.
4. Write `SKILL.md` with only `name` and `description` YAML frontmatter. Put all trigger guidance in the description because Codex sees that before loading the body.
5. Add `agents/openai.yaml` with a display name, 25-64 character short description, and a default prompt that explicitly uses `$skill-name`.
6. Keep `SKILL.md` concise. Move detailed API docs, schemas, and examples into one-level reference files and name when Codex should read them.
7. Test any bundled scripts by running them. Validate the final folder with `quick_validate.py` from the system `skill-creator` skill when available.

## Review Checklist

- [ ] Name is lower-case hyphen-case and under 64 characters.
- [ ] Description states what the skill does and when Codex should use it.
- [ ] Frontmatter contains no unsupported fields.
- [ ] References are one level deep and only loaded when useful.
- [ ] Scripts are deterministic and tested.
- [ ] `agents/openai.yaml` matches the skill.
- [ ] Validation was run or a blocker was recorded.
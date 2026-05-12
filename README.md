# Codex Real Engineering Skills

Codex Real Engineering Skills is a Codex plugin marketplace that packages a set of engineering workflow skills for OpenAI Codex.

The skills are adapted from Matt Pocock's MIT-licensed engineering skills and organized as a Codex-native plugin bundle.

## Included Skills

- `codex-real-engineering-skills:caveman` - terse technical communication.
- `codex-real-engineering-skills:diagnose` - structured debugging and feedback-loop creation.
- `codex-real-engineering-skills:grill-me` - product or technical plan interrogation.
- `codex-real-engineering-skills:grill-with-docs` - stress-test plans against repo docs, context, and ADRs.
- `codex-real-engineering-skills:handoff` - write continuation notes for later sessions.
- `codex-real-engineering-skills:improve-codebase-architecture` - identify architecture refactors.
- `codex-real-engineering-skills:prototype` - build throwaway prototypes to answer a specific question.
- `codex-real-engineering-skills:setup-engineering-skills` - set up repo context docs for the engineering skills.
- `codex-real-engineering-skills:tdd` - run red-green-refactor development.
- `codex-real-engineering-skills:to-issues` - convert plans into vertical-slice implementation issues.
- `codex-real-engineering-skills:to-prd` - write a PRD from existing context.
- `codex-real-engineering-skills:triage` - triage issues into clear roles and states.
- `codex-real-engineering-skills:write-a-skill` - draft or update Codex skills.
- `codex-real-engineering-skills:zoom-out` - map unfamiliar code at system level.

## Install

Install the marketplace from GitHub:

```bash
codex plugin marketplace add MaxFabian25/codex-real-engineering-skills
```

Then enable the plugin in your Codex config:

```toml
[plugins."codex-real-engineering-skills@codex-real-engineering-skills"]
enabled = true
```

Restart Codex after enabling the plugin so the new skills appear in the session prompt surface.

## Verify

Check the marketplace registration:

```bash
codex plugin marketplace upgrade codex-real-engineering-skills
```

Check that Codex can see the plugin skills:

```bash
tmp_prompt="$(mktemp)"
codex debug prompt-input "verify codex-real-engineering-skills" > "$tmp_prompt"
rg "Codex Real Engineering Skills|codex-real-engineering-skills:tdd|codex-real-engineering-skills:diagnose" "$tmp_prompt"
```

## Repository Layout

```text
.agents/plugins/marketplace.json
plugins/codex-real-engineering-skills/.codex-plugin/plugin.json
plugins/codex-real-engineering-skills/skills/
```

The marketplace manifest is at the repository root. The plugin bundle is under `plugins/codex-real-engineering-skills/`.

## Attribution

The skill content is adapted from Matt Pocock's `skills` repository. See [NOTICE.md](NOTICE.md) for source attribution and adaptation notes.

## License

MIT. See [LICENSE](LICENSE).

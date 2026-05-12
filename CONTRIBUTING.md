# Contributing

Contributions should keep this repository usable as a Codex plugin marketplace.

## Before Opening a Pull Request

Run the release checks from [docs/release-checklist.md](docs/release-checklist.md).

For skill changes:

- Keep `SKILL.md` frontmatter to `name` and `description`.
- Keep skill names lower-case and hyphen-delimited.
- Put detailed references beside the skill that uses them.
- Avoid adding runtime dependencies unless the skill explicitly needs deterministic helper scripts.
- Preserve upstream attribution when adapting existing content.

For marketplace changes:

- Keep `.agents/plugins/marketplace.json` as the marketplace entrypoint.
- Keep the plugin bundle under `plugins/codex-real-engineering-skills/`.
- Keep `.codex-plugin/plugin.json` aligned with the marketplace entry.

## Public Discussion

Do not post secrets, private workspace paths, unreleased customer material, or proprietary project context in issues or pull requests.

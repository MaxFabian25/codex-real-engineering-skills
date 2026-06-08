# Notice

This repository packages Codex-native adaptations of Matt Pocock's engineering workflow skills.

## Upstream Source

- Upstream repository: <https://github.com/mattpocock/skills>
- Upstream commit referenced by this plugin: `be55a7970319ede7965edbb02b5e41cba1ca82c9`
- Upstream license: MIT

## Adaptation Notes

The adapted version keeps the skill intent and workflow language while packaging the content as a Codex plugin marketplace:

- Adds `.agents/plugins/marketplace.json` for Codex marketplace registration.
- Moves the plugin payload under `plugins/codex-real-engineering-skills/`.
- Adds `.codex-plugin/plugin.json` metadata.
- Uses Codex namespaced skill triggers such as `codex-real-engineering-skills:tdd`.

The original MIT license notice is preserved in [LICENSE](LICENSE) and in the plugin bundle.

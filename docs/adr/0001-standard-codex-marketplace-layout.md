# Standard Codex marketplace layout

This repository uses a root `.agents/plugins/marketplace.json` and stores the plugin payload under `plugins/codex-real-engineering-skills/` because Codex hydrates that standard marketplace layout into a versioned plugin cache and prompt-visible namespaced skills. A root-level plugin manifest was valid as plugin metadata but did not reliably expose the enabled plugin skills through the Codex prompt surface.

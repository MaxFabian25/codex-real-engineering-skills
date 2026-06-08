# Release Checklist

Use this checklist before making the repository public or publishing a new release branch.

## Repository Metadata

- [ ] `README.md` explains what the plugin is, how to install it, and how to verify it.
- [ ] `LICENSE` preserves the upstream MIT license notice.
- [ ] `NOTICE.md` identifies the upstream source and adaptation boundary.
- [ ] `PRIVACY.md` states whether the plugin collects or transmits data.
- [ ] `SECURITY.md` explains how to report vulnerabilities.
- [ ] `.codex-plugin/plugin.json` points at this repository for public metadata.

## Codex Marketplace Checks

```bash
python3 -m json.tool .agents/plugins/marketplace.json >/dev/null
python3 -m json.tool plugins/codex-real-engineering-skills/.codex-plugin/plugin.json >/dev/null
test -f plugins/codex-real-engineering-skills/.codex-plugin/plugin.json
find plugins/codex-real-engineering-skills/skills -maxdepth 2 -name SKILL.md | wc -l
```

Expected skill count: `15`.

## Fresh Marketplace Source Check

Run against a temporary Codex home after the release commit has been pushed to GitHub. This verifies that Codex can resolve and clone the public git-backed marketplace source:

```bash
tmp_home="$(mktemp -d)"
CODEX_HOME="$tmp_home" codex plugin marketplace add MaxFabian25/codex-real-engineering-skills
CODEX_HOME="$tmp_home" codex plugin marketplace upgrade codex-real-engineering-skills
rm -rf "$tmp_home"
```

Use the git-backed GitHub install for this check. A local filesystem marketplace path validates the manifest shape, but it is not the public installation path.

## Secret And Private Path Check

```bash
rg -n -i 'secret|token|password|api[_-]?key|bearer|private key|BEGIN RSA|BEGIN OPENSSH|/Users/|/private/var|/tmp/' . -g '!/.git/**'
```

Review every hit before release. Hits in security documentation or examples can be acceptable if they do not expose real credentials or private material.

## Prompt Surface Check

After installing, enabling, and restarting Codex in a real Codex home:

```bash
tmp_prompt="$(mktemp)"
codex debug prompt-input "verify codex-real-engineering-skills" > "$tmp_prompt"
rg 'Codex Real Engineering Skills' "$tmp_prompt"
rg 'codex-real-engineering-skills:tdd' "$tmp_prompt"
rg 'codex-real-engineering-skills:diagnose' "$tmp_prompt"
rg 'codex-real-engineering-skills:teach' "$tmp_prompt"
```

---
name: handoff
description: Write a continuation note. Use when handing off, compacting context, or summarizing for later.
---

# Handoff

Write a concise handoff document so a fresh Codex session can continue the work.

## Process

1. Create a temporary markdown file using the host shell's safe temp-file command, such as `New-TemporaryFile` on PowerShell or `mktemp -t handoff-XXXXXX.md` on POSIX shells. Read the created file before writing if the command creates an empty file.
2. Summarize only the context needed to continue: goal, current state, files changed, commands run, validation status, blockers, and next steps.
3. Reference durable artifacts by path or URL instead of duplicating PRDs, plans, ADRs, issues, commits, or diffs.
4. Suggest any relevant Codex skills for the next session using `$skill-name` syntax.
5. Tell the user the handoff path.

If the user includes a focus area, tailor the handoff toward that next session instead of writing a general transcript summary.
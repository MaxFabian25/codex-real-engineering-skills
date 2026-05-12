# Security Policy

## Supported Versions

The `main` branch is the supported release line.

## Reporting a Vulnerability

Report vulnerabilities through GitHub Security Advisories for this repository.

Do not include secrets, private keys, access tokens, customer data, or confidential workspace material in public issues.

## Scope

This repository contains static Codex plugin and skill files. Relevant security concerns include:

- Accidental inclusion of secrets or private paths.
- Instructions that encourage unsafe credential handling.
- Marketplace metadata that points to an unexpected source.
- Helper scripts that execute unsafe commands without clear operator intent.

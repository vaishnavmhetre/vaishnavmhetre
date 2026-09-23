# AGENTS.md

## Agent skills

### Issue tracker

Issues and specs live as GitHub issues in this repo. See `docs/agents/issue-tracker.md`.

### Triage labels

Use the default triage labels: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: root `CONTEXT.md` + `docs/adr/`. See `docs/agents/domain.md`.

## Public-repo guard (MANDATORY)

**This repo is PUBLIC.** Corporate/proprietary data must never be committed here.

- A pre-commit hook (`.githooks/pre-commit`) scans staged files against a
  proprietary-token list and **fails closed** if it finds a match. It is active on
  every commit in this repo.
- The token list itself is proprietary and does **not** live here. It is read from
  the private research vault: `~/portfolio-intel/guard/proprietary-patterns.txt`
  (pushed to a **private** repo in the corporate account). Never copy that file, or
  the vault contents, into this repo.
- If a guard token is missing from the vault, add it to
  `~/portfolio-intel/guard/proprietary-patterns.txt` (and push the vault), never to
  this repo.
- Raw corporate research (GitLab/GitHub dumps, migration mappings, PR/commit stats,
  internal paths, product codenames, corporate emails) belongs in the private vault,
  **not** `docs/`. Only sanitized, public-safe conclusions may appear here.
- Do not bypass the guard with `--no-verify` except for a demonstrated false
  positive.
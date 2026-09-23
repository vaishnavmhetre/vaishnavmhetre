# Research: static site generator decision

Comparative research that led to ADR-0001 (Hugo). Recorded so the reasoning survives
compaction; the raw comparison notes are kept outside the repo.

## Candidates assessed

| SSG | Verdict | Why |
|---|---|---|
| **Hugo** | **Chosen** | Built-in blog primitives (tags, RSS, syntax highlighting, pagination), seconds-long builds, single pinned binary, official `upload-pages-artifact` GitHub Actions workflow. No Node/Ruby toolchain drift. |
| Astro | Strong alternate | Markdown-at-core, excellent DX, TypeScript. Migration path if client-side islands ever become a requirement. |
| Eleventy | Rejected | Assembly required — blog features must be composed from plugins. |
| Jekyll | Rejected | Default-Pages path frozen at Jekyll 3.10, Ruby toolchain. |
| Next.js static export | Rejected | No blog primitives, heaviest published JS, static-export feature restrictions. |

## Decision factors (from research)

- Build cost in GitHub Actions = free for public repos (see ADR-0002).
- Markdown-first authoring for a Java/Python author with no frontend-framework appetite.
- Maintenance burden must stay near-zero over years.
- Deploy path must be the official, maintained Pages workflow, not a community action.
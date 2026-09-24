# Vaishnav Mhetre — Portfolio & Blog

Personal portfolio website that will evolve into a Markdown-based personal blog.

Hosted free on **GitHub Pages** with a static-site build in **GitHub Actions** (no
paid CI minutes). Content is authored in Markdown; the site is regenerated on
every push to `main`.

## Status

🚧 In early research/planning — nothing to see yet.

## Planned

- **Portfolio** — work history (NielsenIQ, Allianz Technology), projects,
  event-driven systems / microservices / insurance-platform engineering
- **Blog** — Markdown-file-based posts, evolved from the portfolio
- **Zero-cost infrastructure** — GitHub Pages + GitHub Actions (free tier)

## Tech

**Hugo (Extended)** + **PaperMod** (Hugo module), deployed via **GitHub Actions**
to **GitHub Pages**. Content authored in Markdown. See `docs/agents/` for repo
conventions.

## Local dev

- `brew install hugo` (Extended)
- `hugo server -D` (drafts included) → http://localhost:1313/
- `bash scripts/verify-site.sh` to run the full verification
- Per clone: `git config core.hooksPath .githooks` (guard hook re-wiring)
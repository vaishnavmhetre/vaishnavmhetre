# Research: GitHub Pages + Actions cost factsheet

Verified from official GitHub documentation (accessed 2026-09-23). Basis for ADR-0002.
Raw source URLs are kept in the private notes store; the conclusions are public knowledge
already described by GitHub's own pricing/docs pages.

## Facts (all verified)

- **Standard runner minutes are free and unlimited for public repositories.**
- **GitHub Pages is free on all plans**; soft limits: published site ≤ 1 GB, ~100 GB/month
  bandwidth.
- The official `deploy-pages` workflow counts as normal runner minutes — zero-rated in a
  public repo.
- Exceeding quota when no card is on file **blocks usage, never bills**.
- The only plan-quota item with teeth: **artifact storage = 500 MB on Free** (shared with
  Packages), no documented public-repo exemption. Immaterial at static-site scale.
- **Node 20 was removed from GitHub-hosted runners on 2026-09-23** — relevant only if a
  Node-based SSG were chosen; Hugo is a single Go binary.

## Go/no-go

**Go.** Public repo + Pages built via GitHub Actions. No paid plan required, no billing
risk.
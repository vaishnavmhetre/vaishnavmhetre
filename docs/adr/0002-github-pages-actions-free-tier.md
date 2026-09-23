# GitHub Pages + GitHub Actions for zero-cost hosting and CI

Verified from official GitHub docs (accessed 2026-09-23): standard-hosted-runner minutes are **free and unlimited for public repositories**; GitHub Pages is **free on all plans** with soft limits (published site ≤1 GB, ~100 GB/month bandwidth); the official `deploy-pages` workflow runs as normal runner minutes and is zero-rated in a public repo; exceeding quota without a card on file **blocks usage rather than billing**.

The only plan-quota item is **artifact storage** (500 MB on Free, shared with Packages) with no documented public-repo exemption — immaterial at static-site scale (a built Hugo site is a few MB per deploy). This ADR records the go/no-go verdict: **go**, for a public repo publishing from GitHub Actions.

Consequences: the repo stays public; Pages publishing source is set to GitHub Actions; the CI workflow pins `hugo` and uses the canonical Pages artifact actions.
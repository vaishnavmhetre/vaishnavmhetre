# Research: portfolio & blog best practices

Synthesis of portfolio-engineering guidance (public sources) that shaped ADR-0003/-0004/-0006.

## Portfolio

- Lead with **3–5 case studies**, not a skills list — backend portfolios sell decisions,
  architecture, and outcomes, not "you need a document, not a running server."
- The site is the **frame**: point outward at LinkedIn (where recruiters live) and GitHub
  (where the code lives). The portfolio curates; it does not duplicate.
- IP-safe rule for corporate work: market the **approach, design, tradeoff analysis, and
  code quality** — never the literal solution or proprietary data.

## Blog

- 1–2 posts/month sustained beats burst publishing; a blog with one post reads better
  than a site with a "Blog" link that 404s.
- Engineer-reader search intent: solve one concrete problem per post, show before/after.
- Tag taxonomies + RSS + sitemap matter from day one for discoverability.

## SEO/analytics

- Analytics: cookie-free, privacy-respecting, flag-gated, **off by default** (ADR-0007).
- Core Web Vitals matter but a static Hugo site with default PaperMod is already in the
  green; do not chase performance theater.
- Custom domain changes nothing architecturally if `baseURL` is config-driven from day
  one (ADR-0005).
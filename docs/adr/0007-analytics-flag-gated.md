# Analytics: cookie-free, flag-gated, off by default

No analytics dependency at launch. A **config flag** gates a cookie-free, privacy-respecting analytics snippet so it can be enabled without a code change. Candidate is **GoatCounter** (free tier covers ≤100k pageviews/month — ample for a starting portfolio). It stays **off until real traffic justifies it**; local dev never pollutes stats.
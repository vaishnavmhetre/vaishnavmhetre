# Vaishnav Mhetre

**Platform Engineer** building event-driven systems, microservices, and binary data delivery for motor-insurance and market-data platforms.

Live portfolio: **[vaishnavmhetre.github.io](https://vaishnavmhetre.github.io/)** · [LinkedIn](https://www.linkedin.com/in/vaishnav-mhetre/)

---

## What I do

The common thread across my career is **data delivery** — taking data out of databases and getting it, reliably and at scale, into the form downstream consumers actually need: binary payloads today, documents earlier in my career.

- **NielsenIQ** — binary data delivery at scale: querying retail measurement data and shipping it downstream as binary payloads through the delivery pipeline's filters and enrichments. Contributed to the config-handling framework and file-handling service, supervised migration of prediction services onto the delivery pipeline, and now work on AI-driven initiatives.
- **Allianz Technology** — motor-insurance platform at the intersection of Contract, Claims, and Document lifecycles. Led a five-person document team and drove the shift toward event-driven systems and microservices.

## Stack

| Area | Tools |
|---|---|
| Languages | Java · TypeScript · Node.js |
| Platform | Spring Boot · Google Cloud Platform · Kafka · PostgreSQL |
| Focus | data delivery · event-driven systems · microservices · cost optimization |

## Writing

I publish case studies from the platforms I've worked on — real problems, real trade-offs:

- [Migrating prediction services onto the delivery pipeline](https://vaishnavmhetre.github.io/case-studies/prediction-services-migration/)
- [Foundations for AI-driven initiatives](https://vaishnavmhetre.github.io/case-studies/ai-initiatives/)
- [Binary data delivery for retail measurement](https://vaishnavmhetre.github.io/case-studies/binary-data-delivery/)

## This repo

The portfolio site: **Hugo (Extended)** + **PaperMod**, hosted free on **GitHub Pages** with a static build in **GitHub Actions**. Content is Markdown; the site regenerates on every push to `main`.

**Local dev**

- `brew install hugo` (Extended)
- `hugo server -D` → http://localhost:1313/
- `bash scripts/verify-site.sh` to run the full verification
- Per clone: `git config core.hooksPath .githooks`

© 2026 Vaishnav Mhetre
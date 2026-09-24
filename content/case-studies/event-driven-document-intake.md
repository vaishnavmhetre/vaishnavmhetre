---
title: "Event-driven document intake for a motor-insurance platform"
date: 2026-09-24
draft: false
tags: [document-engineering, event-driven]
status: "placeholder"
summary: "A sanitized case study about moving motor-insurance document intake from scheduled batches to event-driven streaming, with the tradeoffs that shaped the design."
---

# Event-driven document intake

## The frame

At Allianz Technology, I worked on a motor-insurance platform where documents were part of the everyday Contract and Claims lifecycle. They arrived through more than one kind of request, and downstream work could depend on whether a document was present, readable, and associated with the right business context.

The problem was not simply making uploads fast. A document could be received before its surrounding information was available, and a downstream check could fail for reasons that were not defects in the document itself. With scheduled batch processing, the system could turn a short interruption into a longer delay. It also made it harder to tell whether a missing document meant that no work was waiting, that work had failed, or that the next batch had not started yet.

The frame for the work was to make document arrival explicit. The platform needed a clear lifecycle, observable handoffs, and a way to recover from partial failure without making every retry look like a new request.

## The approach

I moved the design from batch-first thinking toward an event-driven stream. A document arrival became an explicit signal rather than something inferred from the next scheduled run. From there, the work could be separated into receiving work, preparing work, and completing downstream actions.

That separation gave each stage its own responsibility. A failed attempt could be retried without discarding the whole batch. It also made it possible to carry enough context to connect work to its document and to make delayed or repeated work visible.

The other important choice was to treat reliability as part of the model rather than as a final wrapper around it. That meant thinking about idempotent handling, bounded retries, dead-letter work, ordering where it mattered, and a way to reconcile the event path with periodic recovery. I did not want a faster path that simply made failures harder to find.

## Tradeoffs

Events improved responsiveness and made individual stages easier to reason about, but they introduced a different set of responsibilities:

* **Latency versus consistency.** A document can be available before every related record is ready. Consumers need a clear way to wait, defer, or reconcile.
* **Simplicity versus resilience.** Retries and dead-letter handling protect the system, but they also create another operational surface to document and observe.
* **Streaming versus batch.** Streaming fits changing arrival patterns. Batch remains useful for reconciliation, backfills, and repairs.
* **Loose coupling versus debugging.** A smaller contract between stages reduces accidental coupling, while an event trace can require more context than a straightforward job log.

I would keep a deliberate batch path rather than pretend that events should replace every scheduled process. Its purpose would be recovery and reconciliation, not a second implementation of the normal path.

## Outcome and learnings

The durable outcome was a better match between how document work arrives and how the platform responds to it. Work could start sooner, failures had a place to go, and operators had a clearer story when a document was delayed.

The main lesson was that event-driven design is not a message queue with a new label. It is a change in responsibility boundaries. The event, the consumer, the retry policy, the recovery path, and the business meaning all have to line up. I would invest early in contract clarity and operational visibility before adding more event types or throughput.

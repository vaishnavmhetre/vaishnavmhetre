#!/usr/bin/env bash
set -euo pipefail
OUT="${1:-$(mktemp -d)}"
HUGO_ENVIRONMENT=production hugo build --gc --minify --destination "$OUT"
grep -q '<title>' "$OUT/index.html"
[ -f "$OUT/sitemap.xml" ]; [ -f "$OUT/posts/index.xml" ]; [ -f "$OUT/tags/index.xml" ]
[ "$(find "$OUT/case-studies" -name '*.html' | wc -l)" -ge 3 ]
grep -rIq 'gc\.zgo\.at' "$OUT" && { echo "FAIL: analytics emitted while disabled"; exit 1; }
grep -rIq '{{' "$OUT" && { echo "FAIL: unrendered template/shortcode"; exit 1; }
grep -rIq 'localhost' "$OUT" && { echo "FAIL: localhost link leaked"; exit 1; }
echo "VERIFY OK ($(find "$OUT" -type f | wc -l) files)"

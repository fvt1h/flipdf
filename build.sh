#!/usr/bin/env bash
# Builds the standalone index.html (for GitHub Pages) from .claude-artifact/index.html.
# Edit .claude-artifact/index.html, then run:  bash build.sh
set -e
cd "$(dirname "$0")"
SRC=.claude-artifact/index.html
{
cat <<'EOF'
<!doctype html>
<html lang="id">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="FlipBaca">
<meta name="theme-color" content="#EDF0F4" media="(prefers-color-scheme: light)">
<meta name="theme-color" content="#11141A" media="(prefers-color-scheme: dark)">
<meta name="description" content="Pembaca PDF tanpa iklan dengan efek balik halaman, dibuat untuk iPad.">
<style>
:root { color-scheme: light; padding-top: env(safe-area-inset-top, 0px); padding-bottom: env(safe-area-inset-bottom, 0px); }
body { margin: 0; font: 14px system-ui, -apple-system, sans-serif; }
img { max-width: 100%; }
[hidden] { display: none !important; }
</style>
EOF
grep -v 'claude:viewport-fit-sides' "$SRC" | sed -n '1,/^<\/style>$/p'
echo '</head>'
echo '<body>'
grep -v 'claude:viewport-fit-sides' "$SRC" | sed '1,/^<\/style>$/d'
echo '</body>'
echo '</html>'
} > index.html
echo "index.html rebuilt"

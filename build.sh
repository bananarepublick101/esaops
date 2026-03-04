#!/bin/sh
# Cloudflare Pages build script
# Reads GOOGLE_API_KEY from environment variable set in Cloudflare dashboard
set -e

if [ -z "$GOOGLE_API_KEY" ]; then
  echo "ERROR: GOOGLE_API_KEY environment variable is not set"
  exit 1
fi

case "$GOOGLE_API_KEY" in
  *[!A-Za-z0-9_-]*) echo "ERROR: GOOGLE_API_KEY contains unexpected characters"; exit 1 ;;
esac

printf "window.ESA_CONFIG = { apiKey: '%s' };\n" "$GOOGLE_API_KEY" > config.js
echo "config.js generated"

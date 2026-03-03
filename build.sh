#!/bin/sh
# Cloudflare Pages build script
# Reads GOOGLE_API_KEY from environment variable set in Cloudflare dashboard
set -e

if [ -z "$GOOGLE_API_KEY" ]; then
  echo "ERROR: GOOGLE_API_KEY environment variable is not set"
  exit 1
fi

echo "window.ESA_CONFIG = { apiKey: '${GOOGLE_API_KEY}' };" > config.js
echo "config.js generated"

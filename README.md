# ESA Ops — Game Ops Manager

Single-page dashboard for tracking game certifications, branded certs (Italy/Brazil),
proposals, audits, and launch checklists. Data is read live from Google Sheets via the
public Google Visualization endpoint — **no API key, no build step, no backend**.

## Run it

Open `index.html` in any browser. That's it — it also works from `file://`.

The Google Sheets it reads must be shared as **"Anyone with the link can view"**.

## Deploy (Vercel)

The repo lives on a self-hosted Gitea server, so use the Vercel CLI (it deploys
straight from the folder — no GitHub/GitLab import needed):

```sh
npm i -g vercel      # once
vercel login         # once
vercel --prod        # from the repo root — gives you a live URL
```

Vercel auto-detects this as a static site (no `package.json`, nothing to build).
`vercel.json` adds a few safe security headers. No secrets are involved anywhere.

# ESA Ops — Game Ops Manager

Single-page dashboard for tracking game certifications, branded certs (Italy/Brazil),
proposals, audits, and launch checklists. Data is read live from Google Sheets via the
public Google Visualization endpoint — **no API key, no build step, no backend**.

## Run it

Open `index.html` in any browser. That's it — it also works from `file://`.

The Google Sheets it reads must be shared as **"Anyone with the link can view"**.

## Deploy (GitHub Pages)

1. Merge this branch into `main`.
2. On GitHub: **Settings → Pages → Source: Deploy from a branch → Branch: `main` / root → Save**.
3. The dashboard goes live at `https://<user>.github.io/esaops/` within a minute or two.

No secrets are involved anywhere in this repo, so a public repo is fine.

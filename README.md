# Exein + balena single-container demo

A one-`Dockerfile` balena app for a Raspberry Pi 3 (`armv7hf`). It shows the
[balena-exein](https://github.com/shaunmulligan/balena-exein) workflows on a
project with no `docker-compose.yml`, built under QEMU on an x64 runner.

`balena build` treats a project with no compose file as one service named
`main`, so Exein scans it as the object `<fleet-name>-main`.

## Setup

1. Set the fleet slug in both files in `.github/workflows/` (replace
   `FLEET_SLUG`).
2. Add the repo secrets `BALENA_TOKEN` and `ANALYZER_API_KEY`.
3. Push to `main`. Each push makes a draft release; the scheduled
   **Exein gate** finalizes it when its scans pass.

---

Co-authored with Claude

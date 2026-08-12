# Copilot instructions for this repository

This repo is intentionally small and infrastructure-focused. Treat it as a deployment template, not as a product application codebase.

## Principles
- Prefer small, well-scoped changes.
- Keep GitHub Actions configuration valid and readable.
- Do not expose or add secrets directly to config files.
- Preserve compatibility with Google Cloud Artifact Registry and GKE workflows.
- When editing Docker or workflow files, ensure the build and deploy flow still makes sense end-to-end.

## Files to watch
- `.github/workflows/google.yml`
- `dockerfile`
- `docker-build.yml`

## Safe defaults
- Use environment variables for deployment-specific configuration.
- Keep placeholders such as project IDs, cluster names, and repositories explicit and easy to replace.
- Favor minimal YAML changes over broad rewrites.

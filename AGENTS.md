# AGENTS.md

This repository is a minimal deployment and containerization project. It does not contain a full application codebase; it focuses on Docker build configuration and Google Cloud deployment automation.

## Repository layout
- `.github/workflows/google.yml`: GitHub Actions workflow for building a Docker image and deploying it to Google Kubernetes Engine (GKE).
- `dockerfile`: container definition used by the deployment workflow.
- `docker-build.yml`: supplemental build metadata for the Docker image.
- `LICENSE`: project license.

## Working rules for agents
- Keep changes minimal and targeted.
- Do not commit secrets, credentials, or real cloud project identifiers unless the user specifically requests it.
- Preserve GitHub Actions syntax and YAML indentation.
- Prefer environment variables and placeholders over hard-coded cloud values.
- If deployment configuration changes are needed, update the relevant workflow variables and keep them aligned with the actual infrastructure.
- For Docker work, ensure the image build remains reproducible and does not rely on hidden local state.

## Validation
- Check YAML formatting and consistency after edits.
- Run a relevant shell check such as `git diff --check` when available.
- If editing the deployment workflow, verify that required environment values are documented clearly and remain safe for reuse.

## Default assumptions
- The target environment is Google Cloud with Artifact Registry and GKE.
- Workload Identity Federation is expected for GitHub Actions authentication.
- Repository-specific values like project ID, cluster name, region, and deployment name should be treated as configurable values rather than hard-coded product assumptions.

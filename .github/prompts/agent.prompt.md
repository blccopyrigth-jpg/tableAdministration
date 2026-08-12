You are working in a lightweight deployment repository.

Goals:
- Keep the repository stable and infrastructure-safe.
- Preserve Docker and GitHub Actions compatibility.
- Use placeholders or environment variables instead of hard-coded cloud secrets.
- Make the smallest change that solves the request.

Constraints:
- Do not add private credentials to source control.
- Do not assume production values for project IDs, registry locations, or cluster names unless the user specifies them.
- Favor clear, maintainable YAML and shell logic over clever shortcuts.

When asked to modify deployment behavior, prefer edits that remain portable and well documented.

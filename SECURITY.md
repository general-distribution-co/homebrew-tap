# Security Policy

Do not disclose suspected vulnerabilities, credentials, tokens, user identifiers, or workspace identifiers in a public issue.

Use GitHub's private vulnerability reporting for `general-distribution-co/homebrew-tap` from the repository's **Security** tab. Include the affected formula version, operating system, architecture, and checksum when relevant. Never include an active GENRL access token, refresh token, PAT, service-account secret, or device code.

Install only archives referenced by `Formula/genrl.rb`. Homebrew verifies those archives against pinned SHA-256 digests. Release assets are immutable: a corrected binary receives a new semantic version rather than replacing an existing archive.

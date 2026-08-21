# GENRL Homebrew Tap

Install the GENRL command-line interface and local MCP server:

```bash
brew install general-distribution-co/tap/genrl
```

This installs both commands:

```text
genrl
genrl-mcp
```

Authenticate the CLI with:

```bash
genrl auth login
```

Upgrade or uninstall with:

```bash
brew update
brew upgrade genrl
brew uninstall genrl
```

Uninstalling the formula does not silently delete GENRL profiles or operating-system keychain entries. Run `genrl auth logout` when you want to revoke and remove a saved login.

GENRL source development remains in a private repository. This public repository contains only Homebrew distribution metadata, checksummed compiled release archives, and release notes.

## Security

Homebrew verifies every downloaded archive against the SHA-256 digest pinned in `Formula/genrl.rb`. See [SECURITY.md](SECURITY.md) before reporting a suspected vulnerability.

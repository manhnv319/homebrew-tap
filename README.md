# Homebrew Tap for SMVN

Official Homebrew Cask tap for **SMVN** (Smart Model & Multi-Agent Orchestrator for macOS).

---

## 🚀 Installation

### Step 1: Configure GitHub API Token (One-time Setup)
Because the SMVN repository is private, Homebrew requires an access token to download release assets.

Add the following line to your `~/.zshrc`:
```bash
export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
```
Reload your current shell session:
```bash
source ~/.zshrc
```

### Step 2: Tap and Install SMVN
```bash
# 1. Add this tap
brew tap manhnv319/tap

# 2. Mark the tap as trusted (Homebrew 6.0+ security requirement)
brew trust manhnv319/tap

# 3. Install SMVN into /Applications
brew install --cask smvn
```

---

## 🔄 Upgrading

Whenever a new release is published on GitHub Releases, upgrade seamlessly with:
```bash
brew upgrade --cask smvn
```

Or upgrade all your Homebrew packages together:
```bash
brew upgrade
```

---

## 🗑️ Uninstallation

To completely remove SMVN:
```bash
brew uninstall --cask smvn --zap
```

*(The `--zap` flag cleans up application caches, preferences, and saved state).*

---

## 🛠️ Troubleshooting

- **HTTP 404 on download:** Ensure `HOMEBREW_GITHUB_API_TOKEN` is set and has access to the private repository `manhnv319/smvn`. Verify with `echo $HOMEBREW_GITHUB_API_TOKEN`.
- **Untrusted Tap error in Homebrew 6.0+:** Run `brew trust manhnv319/tap` to approve the custom download strategy.

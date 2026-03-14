# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

A Homebrew tap repository for the **Pisum Langue** macOS application (an AI-driven, hotkey-driven, system-tray dictation tool). It contains a single cask definition and a GitHub Actions workflow to automate version bumps.

## Repository Structure

- `casks/pisum-langue.rb` — The Homebrew cask formula. Installs via `.pkg` for aarch64. Uses `livecheck` with `:github_latest` strategy. Releases are pulled from `mschnecke/langue`.
- `.github/workflows/update-cask.yml` — Automated cask updater. Triggered by `repository_dispatch` (from the main langue repo on release) or `workflow_dispatch` (manual). Downloads the new `.pkg`, computes SHA-256, updates the cask file via `sed`, creates a PR, and auto-merges it.

## Key Commands

```bash
# Audit the cask locally
brew audit --cask casks/pisum-langue.rb

# Install from local tap for testing
brew install --cask ./casks/pisum-langue.rb
```

## Cask Update Flow

The `update-cask` workflow expects a version string (e.g., `0.1.7`) without the `v` prefix. It constructs the download URL as `https://github.com/mschnecke/langue/releases/download/v{VERSION}/Pisum.Langue_{VERSION}_aarch64.pkg`. The sha256 in the cask file is currently a placeholder (`REPLACE_WITH_ACTUAL_CHECKSUM`) and gets replaced by the workflow's `sed` commands.

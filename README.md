# Homebrew Tap for Pisum Transcript

Official Homebrew cask for [Pisum Transcript](https://github.com/mschnecke/pisum-transcript), a cross-platform, Hotkey-driven, system-tray-style dictation tool.

## Installation

```bash
brew tap mschnecke/pisum-transcript
brew install --cask pisum-transcript
```

## Update

```bash
brew upgrade --cask pisum-transcript
```

## Uninstall

```bash
# Keep user data
brew uninstall --cask pisum-transcript

# Remove everything including user data
brew uninstall --cask --zap pisum-transcript

# Remove tap
brew untap mschnecke/pisum-transcript
```

## Post-Installation

Pisum Transcript requires Accessibility permissions to capture audio and register system-wide hotkeys.

1. Open **System Settings** > **Privacy & Security** > **Accessibility**
2. Enable **Pisum Transcript** in the list

## Data Locations

| Location | Purpose |
|----------|---------|
| `~/Library/Application Support/net.pisum.transcript` | Application data |
| `~/Library/Caches/net.pisum.transcript` | Cache files |
| `~/Library/Preferences/net.pisum.transcript.plist` | Preferences |
| `~/Library/LaunchAgents/net.pisum.transcript.plist` | Launch agent |

## Architecture Support

The cask installs the ARM64 version for Apple Silicon Macs (M1/M2/M3/M4/M5).

## Automatic Updates

This tap automatically stays in sync with Pisum Transcript releases. When a new version is published to the [main repository](https://github.com/mschnecke/pisum-transcript), a GitHub Actions workflow updates this cask with new version numbers and checksums.

## Links

- [Pisum Transcript Repository](https://github.com/mschnecke/pisum-transcript)
- [Releases](https://github.com/mschnecke/pisum-transcript/releases)
- [Issues](https://github.com/mschnecke/pisum-transcript/issues)

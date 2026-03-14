# Homebrew Tap for Pisum Langue

Official Homebrew cask for [Pisum Langue](https://github.com/mschnecke/langue), a cross-platform, Hotkey-driven, system-tray-style dictation tool.

## Installation

```bash
brew tap mschnecke/pisum-langue
brew install --cask pisum-langue
```

## Update

```bash
brew upgrade --cask pisum-langue
```

## Uninstall

```bash
# Keep user data
brew uninstall --cask pisum-langue

# Remove everything including user data
brew uninstall --cask --zap pisum-langue

# Remove tap
brew untap mschnecke/pisum-langue
```

## Post-Installation

Pisum Langue requires Accessibility permissions to capture audio and register system-wide hotkeys.

1. Open **System Settings** > **Privacy & Security** > **Accessibility**
2. Enable **Pisum Langue** in the list

## Data Locations

| Location | Purpose |
|----------|---------|
| `~/Library/Application Support/com.pisum.langue` | Application data |
| `~/Library/Caches/com.pisum.langue` | Cache files |
| `~/Library/Preferences/com.pisum.langue.plist` | Preferences |
| `~/Library/LaunchAgents/com.pisum.langue.plist` | Launch agent |

## Architecture Support

The cask installs the ARM64 version for Apple Silicon Macs (M1/M2/M3/M4/M5).

## Automatic Updates

This tap automatically stays in sync with Pisum Langue releases. When a new version is published to the [main repository](https://github.com/mschnecke/langue), a GitHub Actions workflow updates this cask with new version numbers and checksums.

## Links

- [Pisum Langue Repository](https://github.com/mschnecke/langue)
- [Releases](https://github.com/mschnecke/langue/releases)
- [Issues](https://github.com/mschnecke/langue/issues)

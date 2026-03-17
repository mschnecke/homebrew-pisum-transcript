cask "pisum-transcript" do
  version "1.0.3"
  sha256 arm: "385a6155f13e4b6e51409072058ca97f697fb5e8a4a8d6367798b040e0be51a0"

  url "https://github.com/mschnecke/pisum-transcript/releases/download/v#{version}/Pisum.Transcript_#{version}_aarch64.pkg"

  name "Pisum Transcript"
  desc "A cross-platform, Hotkey-driven, system-tray-style dictation tool."
  homepage "https://github.com/mschnecke/pisum-transcript"


  pkg "Pisum.Transcript_#{version}_aarch64.pkg"

  # uninstall pkgutil: "net.pisum.transcript.app",
  #           delete: "/Applications/Pisum Transcript.app"

  uninstall pkgutil: "net.pisum.transcript.app"

  zap trash: [
    "~/Library/Application Support/net.pisum.transcript",
    "~/Library/Caches/net.pisum.transcript",
    "~/Library/Preferences/net.pisum.transcript.plist",
    "~/Library/LaunchAgents/net.pisum.transcript.plist",
  ]

  caveats <<~EOS
    Pisum Transcript requires Accessibility permissions to register system-wide hotkeys.

    To grant permissions:
    1. Open System Settings > Privacy & Security > Accessibility
    2. Enable Pisum Transcript in the list

    Settings are stored in: ~/.pisum-transcript.json
  EOS
end

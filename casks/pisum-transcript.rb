cask "pisum-transcript" do
  version "1.0.5"
  sha256 arm: "02acf092a8a7455ae626dc4cccf1dcfc0ddf0a831dd3660d5650879dcb4afd6d"

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

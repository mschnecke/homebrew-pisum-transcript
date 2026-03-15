cask "pisum-langue" do
  version "0.1.15"
  sha256 arm: "a9535ad34a7ae312c68ac7576dc7c5651f5421ea93f219594b7ff2e502d33121"

  url "https://github.com/mschnecke/langue/releases/download/v#{version}/Pisum.Langue_#{version}_aarch64.pkg"

  name "Pisum Langue"
  desc "AI-driven transcription utility"
  homepage "https://github.com/mschnecke/langue"


  pkg "Pisum.Langue_#{version}_aarch64.pkg"

  uninstall pkgutil: "com.pisum.langue.app"
            delete: "/Applications/Pisum Langue.app" 

  zap trash: [
    "~/Library/Application Support/com.pisum.langue",
    "~/Library/Caches/com.pisum.langue",
    "~/Library/Preferences/com.pisum.langue.plist",
    "~/Library/LaunchAgents/com.pisum.langue.plist",
  ]

  caveats <<~EOS
    Pisum Langue requires Accessibility permissions to register system-wide hotkeys.

    To grant permissions:
    1. Open System Settings > Privacy & Security > Accessibility
    2. Enable Pisum Langue in the list

    Settings are stored in: ~/.pisum-langue.json
  EOS
end

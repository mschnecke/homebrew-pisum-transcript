cask "pisum-langue" do
  version "0.1.11"
  sha256 "9623ef2589cd946b729275c49252117b35fc4b9dfb13eb19800035b0f68884e2"

  url "https://github.com/mschnecke/langue/releases/download/v#{version}/Pisum.Langue_#{version}_aarch64.pkg"
  name "Pisum Langue"
  desc "AI-driven transcription utility"
  homepage "https://github.com/mschnecke/langue"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  pkg "Pisum.Langue_#{version}_aarch64.pkg"

  uninstall pkgutil: "com.pisum.langue.app"

  zap trash: [
    "~/Library/Application Support/com.pisum.langue",
    "~/Library/Caches/com.pisum.langue",
    "~/Library/Preferences/com.pisum.langue.plist",
    "~/Library/LaunchAgents/com.pisum.langue.plist",
  ]
end

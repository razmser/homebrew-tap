cask "screenshotter" do
  version "0.2.0"
  sha256 "5e8f59cc9b8a95ed07ecccc6bdd5c884ac8bf0a48a6a11b80db37b7fbedbb114"

  url "https://github.com/razmser/ScreenShotter/releases/download/v#{version}/ScreenShotter-#{version}.zip"
  name "ScreenShotter"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/razmser/ScreenShotter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ScreenShotter.app"

  uninstall quit: "com.razmser.screenshotter"

  zap trash: "~/Library/Preferences/com.razmser.screenshotter.plist"
end

cask "screenshotter" do
  version "0.2.2"
  sha256 "f0c5748f8877c5eb2da1892b7a62a127f88f228ce5beb259da8f313dcbdee8b0"

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

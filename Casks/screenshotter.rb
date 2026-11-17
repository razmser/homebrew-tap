cask "screenshotter" do
  version "0.2.3"
  sha256 "e8b4ee58fc961ca5bc0f221f39be9dfbea3bcbc5f87c5fea1c270e90ad8e9151"

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

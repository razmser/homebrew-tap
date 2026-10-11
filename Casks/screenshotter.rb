cask "screenshotter" do
  version "0.2.1"
  sha256 "b4b1da5ee79c2da8de8d060d376fdbbe845a54f2668b787eb770c5e436bf6427"

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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.26.5"
  sha256 arm:   "0a7a6f91a41499666fdd9a6400a087ba4f86565e2a54ad89e6a4a15bf8bbcf56",
         intel: "13ca0ddc58a0845c8c4ae9627535675d96bfb81a21286b181f6e37a94e51677d"


  url "https://github.com/zouwei/moraya/releases/download/v#{version}/Moraya_#{version}_mac_#{arch}.dmg",
      verified: "github.com/zouwei/moraya/"

  name "Moraya"
  desc "Minimalist AI-powered WYSIWYG Markdown editor built with Tauri"
  homepage "https://github.com/zouwei/moraya"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Moraya.app"

  zap trash: [
    "~/Library/Application Support/com.moraya.app",
    "~/Library/Caches/com.moraya.app",
    "~/Library/Preferences/com.moraya.app.plist",
    "~/Library/Saved Application State/com.moraya.app.savedState",
  ]
end

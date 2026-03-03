cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.21.3"
  sha256 arm:   "1dbefbb1b1f4b5aa7677e8d59afaa8f6aa25ed205a20497e4347ee33df3a0fc4",
         intel: "403cb6ae0cf38567f6ea388a6c21427739f1f053ca30723f8ec3b1b534408b26"


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

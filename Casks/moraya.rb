cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.21.2"
  sha256 arm:   "9c562c693c33ed8725d23b7192182fb3b99a048b79d9317c1a5de8a6ba6bd50d",
         intel: "08005d11c524b5d7a50d0a38f6b4d2c4d80926677f47ab38c5c8f3bc1258ea4a"


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

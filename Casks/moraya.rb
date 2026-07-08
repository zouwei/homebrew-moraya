cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.13"
  sha256 arm:   "b9cf119b7ca2705560858b6669f1bf7dba6d24bdb1d2a94d71c6b31e92914315",
         intel: "e66b38eb7be02c3786ea93c541c65e492c4761b1af482fff048cd1d9488cfb1f"


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

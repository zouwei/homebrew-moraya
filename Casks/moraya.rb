cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.24.0"
  sha256 arm:   "0ed8c76f2aaf03ff985ef1e31569ef5ab3d54d305dc53bd5917f55d9add4bace",
         intel: "fcde57690564db05559cc471f7564276b356b4a7af9ccb098df1638dfc1cad9b"


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

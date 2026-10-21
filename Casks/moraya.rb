cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.19"
  sha256 arm:   "88d41b303942be3d786d47a8218d8cc4c1a4d0ad8fc0da332828709acef9815c",
         intel: "587019bdff8768a12954a7e32d5bb65e2687371ee5bf6fc5a1cbb81ccc52235a"


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

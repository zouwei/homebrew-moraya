cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.25.4"
  sha256 arm:   "6d9d1784807dc5fc0c92bb587a40cffaa834d1e45a687afa302bbbf68683f50c",
         intel: "5502a3dad0fdc2ae772c754014cc6347077e4e92642415ff3c7a23e26407fdbe"


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

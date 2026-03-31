cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.27.4"
  sha256 arm:   "edb668e9eea52623518236056eac08ad3ced221d7d5e19239a1969f6ad7da6f6",
         intel: "76784b29313bfcf026011133cb9fff48a27f234f31e54f240fa524f19d0c6867"


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

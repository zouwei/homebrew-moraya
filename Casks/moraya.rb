cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.3"
  sha256 arm:   "6750db461e9f856621ab46e1278ad85f317e4adf8cd600fa3fa4b49a2719e875",
         intel: "e5f5129ce31f1ef5ccf0e7661a9c83c8305522a6be46f973e1fea7617fe93edd"


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

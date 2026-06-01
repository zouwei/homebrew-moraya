cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.4"
  sha256 arm:   "49e4ada98d4c198e7b225bbf359bb4cbcdc15b441e44f20846ebb88af14cca89",
         intel: "cee1d2a0689e0535d33f2c85b8a2e30a60831dbadfd00a995bab9f308180942e"


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

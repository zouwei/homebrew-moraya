cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.15"
  sha256 arm:   "b71faed704a814f1fec76673c66c61b10b1de86f91ba86e6741e777125886ddc",
         intel: "3396a6640b75ccd8e0b9b1bd96e4b3b1b98bbc9e8b99d6b64ad6f0c4530bb346"


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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.3"
  sha256 arm:   "a9f2cdc054cb4a77c1527e4be4d53218b41de13b1ce9ca4fcc8b15d834299ef2",
         intel: "0cfcd8017b82b6f90fb06b776f69eefb2feb7dc8e0d145e1fc8990cba99c3052"


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

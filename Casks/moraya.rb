cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.22.3"
  sha256 arm:   "7bf0b92f772da6833ee38d089cc55743288be6f35ebf3a2ff4c5899a309ace3d",
         intel: "373bf9549b37ba140946289b2d1abf3559aa9344aa97a3ba1c7c6f4d2277dcb8"


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

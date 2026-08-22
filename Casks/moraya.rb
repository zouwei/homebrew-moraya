cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.14"
  sha256 arm:   "f8da8b2fd9b0dae15efeb3dac7291a4c5293ea6d3c7d6af04bad7dd08040cbed",
         intel: "2dac45014904350d4b75b28d2f356216b07b2fc6dec98e897be9e7e5905ddcf5"


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

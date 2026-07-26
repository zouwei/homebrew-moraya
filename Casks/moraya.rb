cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.1"
  sha256 arm:   "c28efec8e5a306b75332d383356ef43f1ee8b4a22faaf6d36f943f87e8572afa",
         intel: "24a6f5f38e82d5bbcc038ea6336ad051897fa0f8612d3ec797908fd8d3580077"


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

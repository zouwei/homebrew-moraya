cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.22.4"
  sha256 arm:   "b03f2de9c6032442bceb053fd31f47dcf96c0a3bb44fb38e7588587ab293cd3f",
         intel: "61608537c50c2c5ebc5f06708922311a1c93ad259b5ba4c24f3b1b5024c0d810"


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

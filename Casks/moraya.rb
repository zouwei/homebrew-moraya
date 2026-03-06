cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.23.0"
  sha256 arm:   "bf9c6475ab6e6347e66e18b573d3e4072b669e52ee695a769c696c3409f4049a",
         intel: "8feb22ecc4c4423cefd96895fcfaa3a4a3ebda4ff7eb36f3bd73c02ab35800e1"


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

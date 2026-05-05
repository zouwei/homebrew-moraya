cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.39.0"
  sha256 arm:   "a88d1e4b719a3ebd390bc20bb5fa6e8e8e352c08a4cf894cb7afab3c03f6fe90",
         intel: "32c70c08e4d9c26c02492fb899aa3391d92b74696e26df8138c343a4a71fdd07"


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

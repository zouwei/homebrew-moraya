cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.8"
  sha256 arm:   "14532ae0e1209e8e6551d3e61aa921c7226643990b40d1c848638a69b1aa3337",
         intel: "9aea3b3dd5cb3cf40cb8072d6fc2389526d29bbc779df5b8157b8beed459657a"


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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.10"
  sha256 arm:   "cd7dcccd50c616005b9cbba7bda80eb532acae42372751c715896bb7c1c8e349",
         intel: "ecef1ebf0ff510f475e91accea5ac1ebc4f27225afc3ba4a1ed12ec75ae44064"


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

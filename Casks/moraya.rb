cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.42.1"
  sha256 arm:   "c75d27a5af2df9dbbae9dbeaa5c512dd1cf4211b9488dba6526c843e6f4a6d36",
         intel: "d853a176d8b3e654a31175dfa0a5ffb6c4acbf5c5a7a9227be5017bd181fe094"


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

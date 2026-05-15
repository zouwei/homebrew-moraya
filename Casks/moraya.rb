cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.1"
  sha256 arm:   "8d66c524816af80a05989e85839a8adf00e3e57e575e24d0fc56cdc77f852b34",
         intel: "1005ac9d5cc15ee13b01c71d8e64c0473ba6090e8f57a26d289a7548e4ad717d"


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

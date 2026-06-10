cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.7"
  sha256 arm:   "82888cb58f06afd8d1526b5f62817685257310a6ed68a57f8ec79ee5b5d230ca",
         intel: "5742e0fbb270b7537f3a918c985261b093fb16dde4d0b68f6a4ee4ff2535f384"


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

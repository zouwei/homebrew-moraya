cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.29.0"
  sha256 arm:   "23612a1c28de6fa389f8c731851d4de0902fad22ab08eb6e24fbfe13a104b7cb",
         intel: "3c9b1df641d813ede9d438a9ff4a532a6c07471cf6e78cd72c24392577e70ef2"


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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.12"
  sha256 arm:   "a11cb9a0d5969ebed6ec6a65e59ee9d1a4b41dd13e8cb9c48d43e54069d70aef",
         intel: "bb7d5b693810018311a740f30a09a6f98c85f72793bdcb6fec10f4e9766a723d"


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

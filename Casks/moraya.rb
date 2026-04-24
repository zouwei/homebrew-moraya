cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.34.0"
  sha256 arm:   "73a23c57ac2e46934ab11428874a11e6aba259830341001d012ea3a6685c2be3",
         intel: "a9b0dc536cfd59655bc1f81182b3304cef85c78eecd5854dd3fecdfa2dc1c90b"


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

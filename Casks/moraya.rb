cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.26.1"
  sha256 arm:   "a0389cb015f4399e7c830f24db8ece78fbf0a37bbc4d95492701453e266dbb8e",
         intel: "6c513540d12f11fd9d1d85e5d9299b09123d7df2dd9e9718c01a2ec537dbb9ed"


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

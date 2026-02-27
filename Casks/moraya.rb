cask "moraya" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "REPLACE_WITH_AARCH64_SHA256",
         intel: "REPLACE_WITH_X64_SHA256"

  url "https://github.com/zouwei/moraya/releases/download/v#{version}/Moraya_#{version}_#{arch}.dmg",
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

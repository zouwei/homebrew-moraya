cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.20"
  sha256 arm:   "8ccfd80e4cc8164bc1ca43889a1da6471b7fbe3bb10b7579c6225e8153f01fb8",
         intel: "6b3335e36e5b80cf754abcedd84c4bf875af24b05693b38bb1423348d0599cf4"


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

cask "moraya" do
  arch arm: "aarch64", intel: "164121fb7c609f91fe2fd49c02c655c950a768189b4f5649cd0292802c666a67"

  version "0.17.0"
  sha256 arm:   "b2947e3934fe95dba36490c6f5ee4e20d159c4b001c2a5e9dedd395511b98246",
         intel: "164121fb7c609f91fe2fd49c02c655c950a768189b4f5649cd0292802c666a67"

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

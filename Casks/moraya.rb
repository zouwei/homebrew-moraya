cask "moraya" do
  arch arm: "aarch64", intel: "a59caee140455791262c446a8fd457e02756677778c409fb729418d270b0e73a"

  version "0.20.1"
  sha256 arm:   "dac8018591d6fe205fb5c9c1b69e75d75d340611438e4e7e41c5f8a7648b6bea",
         intel: "a59caee140455791262c446a8fd457e02756677778c409fb729418d270b0e73a"

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

cask "moraya" do
  arch arm: "aarch64", intel: "3d662728ce39e4e6cffb1a1aec4e15f43344a63edbbaf3294c113ef6fc8bd2c8"

  version "0.19.0"
  sha256 arm:   "4272fdc535923236d7cfdb127c7412a5568a7f8090bbb57cf39114afabbae572",
         intel: "3d662728ce39e4e6cffb1a1aec4e15f43344a63edbbaf3294c113ef6fc8bd2c8"

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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.9"
  sha256 arm:   "91b8bc010835b4357b4934a6ac9d83bed7e5aa15ea6d3d2f56d15f60bfd05ee3",
         intel: "d924c118cc0936e71780fbc184edec5e13c983c9e0d066df29e36d4a3a15f7d1"


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

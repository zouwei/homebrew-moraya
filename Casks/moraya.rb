cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.23.1"
  sha256 arm:   "7e55633f57547b853ee3d0111fdb1ea3dd1108836f8ffabc35543abad228d822",
         intel: "8ccac12be66e5b89f6f8854ed5f56b43d5b0c6956080f1d1ace5cbd31e09d6e1"


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

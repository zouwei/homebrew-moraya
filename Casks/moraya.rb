cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.25.1"
  sha256 arm:   "ba0e3f2352fe05f31a6abc2efa56cec55f7ddd7a492f2b44b05ff1cdb43c78d1",
         intel: "e98fb6bd9af011122d535bd1b57e399900c98de441f9343036bf5a9230b686e4"


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

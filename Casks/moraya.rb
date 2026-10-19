cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.18"
  sha256 arm:   "5c20530eacae4e1f646f5ac894ec88ea39d3fbb6ac4363cd3aaf1bcfa6cf7256",
         intel: "91444c9e1a87394d995ec6ec9c6961fbde9799b5e414a3747e7773e6cea27d61"


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

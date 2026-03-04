cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.22.0"
  sha256 arm:   "45ebc2dbf6fffb458ad9834ad83e48584d1d78244eee8894861c1a044baf4a9e",
         intel: "bdc2ef055292a348d6bc6327e9e61ed66a9e96a5bb35761a90201fce19948947"


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

cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.26.2"
  sha256 arm:   "dbc4ecbd011a1f9121dc440c8ec675ebcde91e8ad26a4ad13f01461ea0f34167",
         intel: "1bb3738e6881423ba469abe8d5a9d0c9587ba81a47c24b0a81e0dabc0ad8d8f2"


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

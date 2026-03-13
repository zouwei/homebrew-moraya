cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.25.0"
  sha256 arm:   "31b1f791913f8fcbf958dbbbab21ca74ed4e14e5ad447b9ae924b1fb95c2590f",
         intel: "b8e78752a811ae3f3ac711867062ef8a5c0e0f426fe6ca3835eaec4978e9fffa"


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

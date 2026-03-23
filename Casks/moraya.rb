cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.27.0"
  sha256 arm:   "34f990d3f1816dc2ecbc9ef17de2994b8e6f5383c729d3efeb8e486d57ecbf6a",
         intel: "f4df13aa8f642040ed518d3787353063477fef564b95e84cabd7b5661ab2a59c"


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

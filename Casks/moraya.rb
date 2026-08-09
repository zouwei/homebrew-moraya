cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.11"
  sha256 arm:   "666c753a9ed57f7ecd0657d4597c6a47011d5b8e52ed9ac6089bfc2a2b4f819f",
         intel: "79447c359add46c9eae4c23b1c1d57180800ca11bc878b4ac8c366ead8e09f60"


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

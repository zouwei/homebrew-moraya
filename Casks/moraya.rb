cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.27.1"
  sha256 arm:   "103cbbac0fab707f4f642989f4b77cd54c1a2806b4610bf68cecc82b5a338f6f",
         intel: "69dfde99db50942ee3f41de5f348692f5a5a7d401a45b8b37ef87d5e654ae1a7"


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

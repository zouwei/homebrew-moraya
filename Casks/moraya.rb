cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.24.3"
  sha256 arm:   "ccc8eb040998fa9a71b5529f055f79c0fe497af2e0d0fcd80ee81b9f90a9edb2",
         intel: "ac09e344027d5a975af95503f0c9b18db811e6f49f852f2b901bea2788a19981"


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

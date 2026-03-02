cask "moraya" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "77dcab6d2e51d63bf5319fee6a88dae1386d9642c12a44e61d63c0931eb67e4d",
         intel: "1103fcd2ef93ce5036ba43e968d10fb6f5bd7167b94c559241a9a4c4e83671c6"

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

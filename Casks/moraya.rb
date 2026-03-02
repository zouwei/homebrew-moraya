cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.21.0"
  sha256 arm:   "9ee4d36bd7a0f5f81f3289f94739d2077d9061b62b0c8d6168439bd96f974f57",
         intel: "6b08cf186f6e8252ede721ea2e797b4524ba3bb19121e2deec8eaa60d733d96b"


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

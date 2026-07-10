cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.14"
  sha256 arm:   "6b4cacaf5ec90ef19665afbe78691359f06132d308ccd226fa593e4ac625d50e",
         intel: "58ca0d47f107f24d91b69bd2bfc6245a57ce5bf6519943026f7e40e7fdafba6b"


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

cask "moraya" do
  arch arm: "aarch64", intel: "066d3d4079ca99108262d378537b915f471a586bcd8d9075d47eda26edf1d769"

  version "0.17.1"
  sha256 arm:   "1139c91e55ff4e53fa74da4460f94cb0f5602169e1b7b7c863b8fe9705ee9c6c",
         intel: "066d3d4079ca99108262d378537b915f471a586bcd8d9075d47eda26edf1d769"

  url "https://github.com/zouwei/moraya/releases/download/v#{version}/Moraya_#{version}_#{arch}.dmg",
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

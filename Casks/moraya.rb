cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.10"
  sha256 arm:   "cd3e95d1d8e93df4a17421d1d37cb09ccc2b65dc14fb404ac9f2c016597d4409",
         intel: "1cabb6f0a47eaf64cc1c4c12c2c7298b1143a0a2093abd71a89c82caf23acb6a"


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

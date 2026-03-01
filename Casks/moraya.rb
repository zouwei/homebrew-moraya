cask "moraya" do
  arch arm: "aarch64", intel: "dad836a4e07203e70c56e6a0ea6b4aee5db446ffd866421b53fc613b12cfa844"

  version "0.19.1"
  sha256 arm:   "a1c37a30df67db9953ac8856cd13c2ec12aaf9b347c8b435d5f71865222c6238",
         intel: "dad836a4e07203e70c56e6a0ea6b4aee5db446ffd866421b53fc613b12cfa844"

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

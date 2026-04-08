cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.28.0"
  sha256 arm:   "9f2d9f47dbdc4a1e630e411a197f4b1ac756c7fd82cdb6c1567e42108006af31",
         intel: "0735bb0d61cebcce51c95b109e836d79b78d361999aa2e3b81ce2bfcf8eb9004"


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

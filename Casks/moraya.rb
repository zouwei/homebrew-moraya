cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.26.4"
  sha256 arm:   "868b92d718f29384c15d48ad7ad67dcff6af4ff20a2f455e80fe1b6d4c4ffcfb",
         intel: "22ae58551155c9379ebb6866bc842337e76c9a73ebbf7ade5d8baaf4b878a1c3"


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

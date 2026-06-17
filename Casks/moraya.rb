cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.41.8"
  sha256 arm:   "b7f0d20de8af7512bd1693ea65ac4e366a102321eaa5616eff76259b0db8e718",
         intel: "0d6b67338e5b98eccb6ccbaef19b8b4bf3528e562526865ac05762fdc19abc5a"


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

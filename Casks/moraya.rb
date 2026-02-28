cask "moraya" do
  arch arm: "aarch64", intel: "287a85f7ad4f9c1b1082307c361df6cf173600abdd73078b0d2ae128f069a98e"

  version "0.17.2"
  sha256 arm:   "244f5a170cc562477df6a1b177645a0cef82bc79d1e3a99377a93fb321a2ab71",
         intel: "287a85f7ad4f9c1b1082307c361df6cf173600abdd73078b0d2ae128f069a98e"

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

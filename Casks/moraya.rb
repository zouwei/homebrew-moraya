cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.43.2"
  sha256 arm:   "4c1136463b6ae19d03fc6d1eb94b6ade6c4d41dac2e853c2ade942d1d9e41ab7",
         intel: "eb80d6bbe4e45a09ed0ea528519dee466c480fb1322465eddf91a8a0ab5f1697"


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

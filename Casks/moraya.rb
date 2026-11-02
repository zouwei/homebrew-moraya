cask "moraya" do
  arch arm: "aarch64", intel: "x64"
  version "0.45.21"
  sha256 arm:   "3373994c5571507c24f1031e8d03313dcc2a551b95c998acb5a42e5b438db4c4",
         intel: "aefaf8410398860c6ef9be900e93a4784a6c54ed0ecb7c2de770cfdb4d989b1b"


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

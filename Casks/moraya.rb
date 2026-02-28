cask "moraya" do
  arch arm: "aarch64", intel: "75756de55296d39949808f2e278c16a5622f9d7cdb3250b2299aa9b5af2f900f"

  version "0.18.1"
  sha256 arm:   "f07df4755466f91ddd69f2ed229ab2d19a16b05b64b873245433680a75a6c97f",
         intel: "75756de55296d39949808f2e278c16a5622f9d7cdb3250b2299aa9b5af2f900f"

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

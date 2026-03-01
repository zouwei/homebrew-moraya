cask "moraya" do
  arch arm: "aarch64", intel: "8443a2fdf4abfddaa12167be31f23804e4b542711b1773703cbdf1c872b79138"

  version "0.20.0"
  sha256 arm:   "0adf4c94721361d8d3fd7fc1021d516ad0806b59f35bb405204f133701d9b46a",
         intel: "8443a2fdf4abfddaa12167be31f23804e4b542711b1773703cbdf1c872b79138"

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

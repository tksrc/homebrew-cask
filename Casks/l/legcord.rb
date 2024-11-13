cask "legcord" do
  version "1.0.3"
  sha256 "44e2dfed88e6293f0a0c102c7e70afa46e508ea789b53038140d547abee7cc97"

  url "https://github.com/legcord/legcord/releases/download/stable/legcord-#{version}-mac-universal.dmg",
      verified: "github.com/legcord/legcord/"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end

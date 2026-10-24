cask "gear" do
  version "0.1.10"
  sha256 "14582c471209188063ddb3a4aa099b582b7fd02c15ecfd63d9e61a0b8fc9435a"

  url "https://github.com/cLLeB/gear/releases/download/v#{version}/Gear_#{version}_universal.dmg"
  name "Gear"
  desc "AI-powered developer terminal"
  homepage "https://github.com/cLLeB/gear"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gear.app"

  zap trash: [
    "~/Library/Application Support/Gear",
    "~/Library/Preferences/app.clleb.gear.plist",
    "~/Library/Logs/Gear",
  ]
end

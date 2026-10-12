cask "gear" do
  version "0.1.7"
  sha256 "6b859b1e7f49efe9509074b4482d6c0dc7e65d8fb1be2a97dc2f0d1200084f4c"

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

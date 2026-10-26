cask "gear" do
  version "0.1.12"
  sha256 "552fd15d33aa739a73eedec2d2bdac0bada3611c7afb65279ee3d7b027323c9d"

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

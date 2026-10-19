cask "gear" do
  version "0.1.8"
  sha256 "d63fefe29badcbdf42b8a747eaf9c773f61d853ac2eadd0962dfd652fb184eac"

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

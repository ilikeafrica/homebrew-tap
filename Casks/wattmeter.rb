cask "wattmeter" do
  version "1.1"
  sha256 "20613b48416cef94d73a2576492745e7ee537b77c598e960b3fbae4e6258eafd"

  url "https://github.com/ilikeafrica/wattmeter/releases/download/v#{version}/WattMeter-#{version}.dmg"
  name "WattMeter"
  desc "Menu-bar power monitor for MacBook (charge/draw/adapter watts, health, temp)"
  homepage "https://github.com/ilikeafrica/wattmeter"

  depends_on macos: :monterey

  app "WattMeter.app"

  zap trash: [
    "~/Library/LaunchAgents/com.targetdisplay.wattmeter.plist",
  ]
end

cask "wattmeter" do
  version "1.1.1"
  sha256 "cf58202e0f57d5d7387181664c413326d098c387edb031acb9a37c035c6a3fce"

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

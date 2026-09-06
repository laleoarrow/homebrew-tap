cask "wattson" do
  version "3.0.26"
  sha256 "376a09fe9c090d13a5b56f6125e966695dd7680fead9f6c4a2a43cc692dbb572"

  url "https://github.com/laleoarrow/battery-monitor/releases/download/v#{version}/Wattson-v#{version}-macos-universal.pkg"
  name "Wattson"
  desc "Real-time menu-bar power-flow monitor"
  homepage "https://github.com/laleoarrow/battery-monitor"

  depends_on macos: :monterey

  pkg "Wattson-v#{version}-macos-universal.pkg"

  uninstall launchctl: [
              "com.leoarrow.wattson.helper",
              "com.leoarrow.wattson.login",
            ],
            quit:      "com.leoarrow.wattson",
            pkgutil:   "com.leoarrow.wattson.pkg",
            delete:    [
              "/Applications/Wattson.app",
              "/Library/LaunchDaemons/com.leoarrow.wattson.helper.plist",
              "/Library/PrivilegedHelperTools/com.leoarrow.wattson.helper",
              "/var/run/wattson-helper.sock",
              "~/Library/LaunchAgents/com.leoarrow.wattson.login.plist",
            ]

  zap trash: [
    "~/Library/Application Support/Wattson",
    "~/Library/Caches/com.leoarrow.wattson",
    "~/Library/Containers/com.leoarrow.wattson",
    "~/Library/Preferences/com.leoarrow.wattson.plist",
    "~/Library/Saved Application State/com.leoarrow.wattson.savedState",
  ]
end

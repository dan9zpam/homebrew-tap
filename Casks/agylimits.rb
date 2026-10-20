cask "agylimits" do
  version "1.1.0"
  sha256 "bea69d8ff535ce3ea1c886d3964c49b2ef4c7e4ccb05d7e47a2de6663f573056"

  url "https://github.com/dan9zpam/AgyLimitsBar/releases/download/v#{version}/AgyLimitsBar-v#{version}.zip"
  name "AGY Limits Bar"
  desc "macOS Menu Bar app to track Google Antigravity (AGY) limits in real-time"
  homepage "https://github.com/dan9zpam/AgyLimitsBar"

  depends_on macos: ">= :ventura"

  app "AGY Limits Bar.app"

  zap trash: [
    "~/Library/Preferences/dev.agy.limits-bar.plist",
  ]
end

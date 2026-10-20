cask "agylimits" do
  version "1.1.0"
  sha256 "84c67dd9d3b79aece5252957e061692c41d9bd79b989c6ab6ab6a325afcfb01f"

  url "https://github.com/dan9zpam/AgyLimitsBar/releases/download/v#{version}/AgyLimitsBar-v#{version}.zip"
  name "AGY Limits Bar"
  desc "macOS Menu Bar app to track Google Antigravity (AGY) limits in real-time"
  homepage "https://github.com/dan9zpam/AgyLimitsBar"

  depends_on macos: :ventura

  app "AGY Limits Bar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AGY Limits Bar.app"]
  end

  zap trash: [
    "~/Library/Preferences/dev.agy.limits-bar.plist",
  ]
end

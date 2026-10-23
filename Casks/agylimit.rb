cask "agylimit" do
  version "1.2.0"
  sha256 "b0367b889dbc3508a49ebd8519306f5f613190269cd5403ce60c2d25b9c9e2db"

  url "https://github.com/dan9zpam/AgyLimitsBar/releases/download/v#{version}/AgyLimitsBar-v#{version}.zip"
  name "AGY Limits Bar"
  desc "Menu bar app for Claude Code and Google Antigravity (AGY) usage limits"
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

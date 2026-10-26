cask "claudelimitsbar" do
  version "1.3.0"
  sha256 "c97b04547cb1d6efee70fa4dbb97976b0adacaeb22edcb082cb46443e35392fc"

  url "https://github.com/dan9zpam/ClaudeLimitsBar/releases/download/v#{version}/ClaudeLimitsBar-v#{version}.zip"
  name "Claude Limits Bar"
  desc "Menu bar app for Claude Code and Google Antigravity (AGY) usage limits"
  homepage "https://github.com/dan9zpam/ClaudeLimitsBar"

  depends_on macos: :ventura

  app "Claude Limits Bar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Claude Limits Bar.app"]
  end

  zap trash: [
    "~/Library/Preferences/dev.claude.limits-bar.plist",
    "~/Library/Preferences/dev.agy.limits-bar.plist",
  ]
end

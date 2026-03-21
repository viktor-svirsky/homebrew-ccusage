cask "ccusage" do
  version "1.11.0"
  sha256 "b52af4af48e189a45da7896e3e00af9f696e684d20804aed571fdc472efe0b2e"

  url "https://github.com/viktor-svirsky/ccusage/releases/download/v#{version}/CCUsage.zip"
  name "CCUsage"
  desc "macOS menu bar app displaying Claude Code usage limits in real-time"
  homepage "https://github.com/viktor-svirsky/ccusage"

  depends_on macos: ">= :ventura"

  app "CCUsage.app"

  zap trash: [
    "~/Library/Preferences/com.ccusage.CCUsage.plist",
  ]
end

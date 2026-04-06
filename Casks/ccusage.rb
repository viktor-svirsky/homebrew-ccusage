cask "ccusage" do
  version "1.22.0"
  sha256 "3b9f67b4548dc2c96d7465537027a3fe05cba32db057a246795c8b8760b31ed6"

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

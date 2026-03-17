cask "ccusage" do
  version "1.7.0"
  sha256 "48d40641e3b5d4233df3c1cbb6898f34fc562a8158b60561a430642fae21d828"

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

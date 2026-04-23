cask "ccusage" do
  version "1.28.1"
  sha256 "d3b02ff4bc9442bd1e23b4707c7c6fb0448bc7449c6f4ad57c6c367cfe6486fc"

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

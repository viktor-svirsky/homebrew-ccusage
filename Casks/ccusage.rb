cask "ccusage" do
  version "1.25.15"
  sha256 "43aa1ce0f8febd50bb7fafec46d1a3a3c6d518a16d9f1aa5e6d48495266ac1b9"

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

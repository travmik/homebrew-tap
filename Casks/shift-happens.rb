cask "shift-happens" do
  version "0.3.0"
  sha256 "c2c1d3f41f3fd5ff36d0c14e99645e58c0753e02e9f6b6345d4b1dfd43d8605d"

  url "https://github.com/travmik/shift-happens/releases/download/v0.3.0/ShiftHappens-v0.3.0-arm64.tar.gz"
  name "Shift Happens"
  desc "Menu bar utility that fixes text typed in the wrong keyboard layout"
  homepage "https://github.com/travmik/shift-happens"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ShiftHappens.app"

  caveats <<~EOS
    Grant Accessibility permission after installing:
    System Settings → Privacy & Security → Accessibility → ShiftHappens.app.
    
    First launch from Finder is blocked by Gatekeeper (the app is unsigned).
    To allow it: System Settings → Privacy & Security → "Open Anyway", or run
    `xattr -d com.apple.quarantine /Applications/ShiftHappens.app`.
    Both steps repeat after each update: the app is unsigned, so macOS ties
    the permission and the block to the exact build.
  EOS
end

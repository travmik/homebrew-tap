cask "shift-happens" do
  version "0.2.0"
  sha256 "0d37b3bebf999709cc0d14ca55f2fa39e1e57bcc383542902785e1066b320445"

  url "https://github.com/travmik/shift-happens/releases/download/v0.2.0/ShiftHappens-v0.2.0-arm64.tar.gz"
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

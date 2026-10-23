cask "shift-happens" do
  version "0.1.0"
  sha256 "3f78e1ec0fd6c0ca172e5d7878c374d19ee451586ec7c7e57ccd9fe337268c51"

  url "https://github.com/travmik/shift-happens/releases/download/v0.1.0/ShiftHappens-v0.1.0-arm64.tar.gz"
  name "Shift Happens"
  desc "Menu bar utility that fixes text typed in the wrong keyboard layout"
  homepage "https://github.com/travmik/shift-happens"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ShiftHappens.app"

  caveats <<~EOS
    Grant Accessibility permission after installing:
    System Settings → Privacy & Security → Accessibility → ShiftHappens.app.
    Re-grant after each update: the app is unsigned, so macOS ties the
    permission to the exact build.
  EOS
end

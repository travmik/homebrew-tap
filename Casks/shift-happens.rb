cask "shift-happens" do
  version "0.1.1"
  sha256 "141adf0beee0732ff6828ddaf6da90be9e73a821cb661997fec80fe9194e0ba8"

  url "https://github.com/travmik/shift-happens/releases/download/v0.1.1/ShiftHappens-v0.1.1-arm64.tar.gz"
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

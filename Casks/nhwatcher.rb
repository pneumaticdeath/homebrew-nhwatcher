cask "nhwatcher" do
  version "0.1.2"
  sha256 "3da46943c5d2040e7576e3baa2cd25161244adabc5fb786464abad4bd5ca8a6a"

  url "https://github.com/pneumaticdeath/NHWatcher/releases/download/v#{version}/NHWatcher-#{version}.saver.zip"
  name "NH Watcher"
  desc "macOS screensaver that displays live NetHack games from nethack.alt.org"
  homepage "https://github.com/pneumaticdeath/NHWatcher"

  depends_on macos: ">= :ventura"

  screen_saver "NHWatcher.saver"

  uninstall delete: "#{ENV["HOME"]}/Library/Screen Savers/NHWatcher.saver"

  zap trash: "#{ENV["HOME"]}/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver"
end

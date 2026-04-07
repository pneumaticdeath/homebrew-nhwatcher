cask "nhwatcher" do
  version "0.2.9"
  sha256 "d9688f9a6b05c605045ef9960841af6a09c36aaccf8513b9bc4ad2a3ad8cc758"

  url "https://github.com/pneumaticdeath/NHWatcher/releases/download/v#{version}/NHWatcher-#{version}.saver.zip"
  name "NH Watcher"
  desc "macOS screensaver that displays live NetHack games from public NetHack severs"
  homepage "https://github.com/pneumaticdeath/NHWatcher"

  depends_on macos: ">= :ventura"

  screen_saver "NHWatcher.saver"

  uninstall delete: "#{ENV["HOME"]}/Library/Screen Savers/NHWatcher.saver"

  zap trash: "#{ENV["HOME"]}/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver"
end

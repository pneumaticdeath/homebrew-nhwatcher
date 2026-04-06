cask "nhwatcher" do
  version "0.2.8"
  sha256 "fd8d15e400c8ade40bcf1ab4ee65fc4249f47b0f1ef00b331c0fc748ce3fceb9"

  url "https://github.com/pneumaticdeath/NHWatcher/releases/download/v#{version}/NHWatcher-#{version}.saver.zip"
  name "NH Watcher"
  desc "macOS screensaver that displays live NetHack games from public NetHack severs"
  homepage "https://github.com/pneumaticdeath/NHWatcher"

  depends_on macos: ">= :ventura"

  screen_saver "NHWatcher.saver"

  uninstall delete: "#{ENV["HOME"]}/Library/Screen Savers/NHWatcher.saver"

  zap trash: "#{ENV["HOME"]}/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver"
end

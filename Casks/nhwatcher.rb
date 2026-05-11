cask "nhwatcher" do
  version "0.2.13"
  sha256 "438fa917e796e338f4d4d6809ab81ea79e267b3996d911143734384329f70265"

  url "https://github.com/pneumaticdeath/NHWatcher/releases/download/v#{version}/NHWatcher-#{version}.saver.zip"
  name "NH Watcher"
  desc "macOS screensaver that displays live NetHack games from public NetHack severs"
  homepage "https://github.com/pneumaticdeath/NHWatcher"

  depends_on macos: ">= :ventura"

  screen_saver "NHWatcher.saver"

  uninstall delete: "#{ENV["HOME"]}/Library/Screen Savers/NHWatcher.saver"

  zap trash: "#{ENV["HOME"]}/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver"
end

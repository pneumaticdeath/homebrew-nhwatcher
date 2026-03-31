cask "nhwatcher" do
  version "0.2.6"
  sha256 "1e7f308ae702caad772157130c24485650065012531f3f4161ceda323ce94ff2"

  url "https://github.com/pneumaticdeath/NHWatcher/releases/download/v#{version}/NHWatcher-#{version}.saver.zip"
  name "NH Watcher"
  desc "macOS screensaver that displays live NetHack games from public NetHack severs"
  homepage "https://github.com/pneumaticdeath/NHWatcher"

  depends_on macos: ">= :ventura"

  screen_saver "NHWatcher.saver"

  uninstall delete: "#{ENV["HOME"]}/Library/Screen Savers/NHWatcher.saver"

  zap trash: "#{ENV["HOME"]}/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver"
end

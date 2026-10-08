cask "dailytask" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "1204172d9b7141d242f93f9f47cf2ad060ca02228af7ce329da36aa8c03f94db",
         intel: "08af2af13a10d0901ddbf0512929e1384191766d2163c9f456b661ea1e1a8100"

  url "https://github.com/nhanchaukp/dailytask/releases/download/v#{version}/DailyTask-#{arch}.dmg"
  name "Daily Task"
  desc "Lightweight menu bar daily task and todo manager for macOS"
  homepage "https://github.com/nhanchaukp/dailytask"

  auto_updates true
  depends_on macos: :sonoma

  app "Daily Task.app"

  uninstall quit: "com.nhanchaukp.DailyTaskApp"

  zap trash: [
    "~/Library/Application Support/DailyTask",
    "~/Library/Caches/com.nhanchaukp.DailyTaskApp",
    "~/Library/HTTPStorages/com.nhanchaukp.DailyTaskApp",
    "~/Library/Preferences/com.nhanchaukp.DailyTaskApp.plist",
  ]
end

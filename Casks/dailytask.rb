cask "dailytask" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "240ae710b22c8468b53cf9f2c9fa60813f15b7e0e91c284c516794af0863310b",
         intel: "09e239e6fd25cb1bf25d149d2dc0e8763476ffa66b3e58cf3c8f87ac37cf9862"

  url "https://github.com/nhanchaukp/dailytask/releases/download/v1.0.3/DailyTask-#{arch}.dmg"
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

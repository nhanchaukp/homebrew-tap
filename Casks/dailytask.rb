cask "dailytask" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0"
  sha256 arm:   "6adfe5f5fc5015d33e03a112c919e4fb367b7e6247f1001fd73be753d8d6b2e8",
         intel: "63e466cf97bb3128e63810fcd146a631d3b8b5f9ee8352b8a6567962943a8ea6"

  url "https://github.com/nhanchaukp/dailytask/releases/download/v1.0.0/DailyTask-#{arch}.dmg"
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

cask "dailytask" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "8de72961b44597afaa85501f0006e2d6199c96800579f9e61e3635ae2f5fc158",
         intel: "479efc4fa2c4f29c265c8887e3a0b91b7ad4ad8776c85a8088f8d448c401fc69"

  url "https://github.com/nhanchaukp/dailytask/releases/download/v1.0.2/DailyTask-#{arch}.dmg"
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

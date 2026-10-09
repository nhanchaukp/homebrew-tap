cask "dailytask" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "c4bf6d4c42be47a3b6991b98bd39a8ffabe051b98fe64a33902cc356bbd41378",
         intel: "ba13b596117c3f82d8211136458263b94d721b05190f54075efb435dc1af3f90"

  url "https://github.com/nhanchaukp/dailytask/releases/download/v1.0.4/DailyTask-#{arch}.dmg"
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

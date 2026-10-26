cask "clipback" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.6"
  sha256 arm:   "b420aeab7ca8ddc3452936e61966a8c8c9b990fd71e73f3383cf0d89edc95c87",
         intel: "51b1f1a25dd03a59c2d49ee2f08f37584c85077b37d6a9ea9255995d736c13d4"

  url "https://github.com/nhanchaukp/Clipback/releases/download/v#{version}/Clipback-#{arch}.dmg"
  name "Clipback"
  desc "Lightweight and powerful clipboard manager for macOS"
  homepage "https://github.com/nhanchaukp/Clipback"

  auto_updates true
  depends_on macos: :sonoma

  app "Clipback.app"

  uninstall quit: "com.nhanchaukp.clipback"

  zap trash: [
    "~/Library/Application Support/Clipback",
    "~/Library/Application Support/Clipory",
    "~/Library/Caches/com.nhanchaukp.clipback",
    "~/Library/HTTPStorages/com.nhanchaukp.clipback",
    "~/Library/Preferences/com.nhanchaukp.clipback.plist",
  ]
end

cask "clipback" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.7"
  sha256 arm:   "ec572cdb29f1263dc8e8bd6dc459b06a266e01699596091a05d66c4c82f1f1ed",
         intel: "9d2d9c033d1d95ec8f51627e2da422b0b9972d7b1d437068e50613750fbc186f"

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

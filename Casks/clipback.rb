cask "clipback" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.6"
  sha256 arm:   "c1b6404391ce376fe54fcc8223098a2731872ec843e3cd7b446f6e447159343e",
         intel: "b041f5aa560c3cd4120e88ad9b1df1e339396f73e6e94196ec85fbafcc77c334"

  url "https://github.com/nhanchaukp/Clipback/releases/download/v#{version}/Clipback-#{arch}.dmg"
  name "Clipback"
  desc "Lightweight and powerful clipboard manager for macOS"
  homepage "https://github.com/nhanchaukp/Clipback"

  auto_updates true
  depends_on macos: ">= :sonoma"

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

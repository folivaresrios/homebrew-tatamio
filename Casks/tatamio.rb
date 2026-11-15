cask "tatamio" do
  version "0.19.0"
  sha256 "adb95ca28168ffd257122d1da184603a89f873ff9f8ace38fe69bb4571d2e96d"

  url "https://tatamio.app/downloads/Tatamio-#{version}.dmg"
  name "Tatamio"
  desc "Tiling window manager with snap zones, workspaces and a screen-share portal"
  homepage "https://tatamio.app/"

  livecheck do
    url "https://tatamio.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tatamio.app"

  # La app es de barra de menú (LSUIElement) — sin binstub. El CLI vive embebido en
  # Contents/Resources/bin/tatamio; el usuario lo instala desde el menú de la app.
  zap trash: [
    "~/.tatami",
    "~/Library/Application Support/app.tatamio",
    "~/Library/Caches/app.tatamio.mac",
    "~/Library/HTTPStorages/app.tatamio.mac",
    "~/Library/Preferences/app.tatamio.mac.plist",
  ]
end

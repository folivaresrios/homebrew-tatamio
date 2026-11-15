cask "tatamio" do
  version "0.21.0"
  sha256 "c05557a49349e6ea406cdb4f6ce8e28474d7b69e0b095aaad9a8be92664e7060"

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

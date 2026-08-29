cask "tatamio" do
  version "0.18.1"
  sha256 "5f99509725bee64e4d944f5bfaf6047040a0e91edf3f378e32d01574cc08c1c4"

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

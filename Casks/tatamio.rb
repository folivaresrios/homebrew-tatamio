cask "tatamio" do
  version "0.12.2"
  sha256 "23fba937c7782ed476dc4201498ea5997a722d9b378768ecd55784c46841cbce"

  url "https://tatamio.app/downloads/Tatamio-#{version}.dmg"
  name "Tatamio"
  desc "Tiling window manager for macOS with snap zones, workspaces and Portal"
  homepage "https://tatamio.app"

  depends_on macos: :sonoma

  app "Tatamio.app"

  # La app es de barra de menú (LSUIElement) — sin binstub. El CLI vive embebido en
  # Contents/Resources/bin/tatamio; el usuario lo instala desde el menú de la app.
  zap trash: [
    "~/.tatami",
    "~/Library/Application Support/app.tatamio",
  ]
end

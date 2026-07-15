cask "tatamio" do
  version "0.12.0"
  sha256 "c49d4725952a1bf51bfe36a1bcf2d387d7ab9a1fc3bdb4e01c6540d11a3d883a"

  url "https://tatamio.app/downloads/Tatamio-#{version}.dmg"
  name "Tatamio"
  desc "Tiling window manager for macOS with snap zones, workspaces and Portal"
  homepage "https://tatamio.app"

  depends_on macos: ">= :sonoma"

  app "Tatamio.app"

  # La app es de barra de menú (LSUIElement) — sin binstub. El CLI vive embebido en
  # Contents/Resources/bin/tatamio; el usuario lo instala desde el menú de la app.
  zap trash: [
    "~/.tatami",
    "~/Library/Application Support/app.tatamio",
  ]
end

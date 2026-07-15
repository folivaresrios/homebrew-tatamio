cask "tatamio" do
  version "0.12.0"
  sha256 "494007321de20fd92c445540e50e03435e97488896424a3e4d18f708aa233ee7"

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

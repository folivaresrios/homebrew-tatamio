cask "tatamio" do
  version "0.12.0"
  sha256 "5640f89c5d62c22eb55ca33a0bcca54031c1ea47e0cb6610dca94348e606b27e"

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

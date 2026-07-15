cask "tatamio" do
  version "0.12.0"
  sha256 "6fb2df4205634ad1cf46d403d39587986148383a8fd5aa65aeccd1479b461ca4"

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

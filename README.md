# homebrew-tatamio — Homebrew tap for Tatamio

```sh
brew tap folivaresrios/tatamio
brew install --cask tatamio
```

## Publishing (por cada release)

Este directorio es el CONTENIDO de un repo público aparte
`github.com/folivaresrios/homebrew-tatamio` (Homebrew exige el prefijo
`homebrew-`). Al cortar una versión:

1. `build-release.sh` produce `dist/Tatamio-<version>.dmg` (firmado + notarizado).
2. Sube el DMG a `tatamio.app/downloads/` (public/downloads del sitio).
3. `shasum -a 256 dist/Tatamio-<version>.dmg` → pega el hash en `Casks/tatamio.rb`.
4. Sube `version` en el cask.
5. Commit + push al repo `homebrew-tatamio`.

Los usuarios ya instalados se actualizan con `brew upgrade --cask tatamio`
(además del auto-update por Sparkle dentro de la app).

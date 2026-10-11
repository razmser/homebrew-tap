# razmser/tap

```sh
brew install --cask razmser/tap/screenshotter
```

ScreenShotter builds are ad-hoc signed and not notarized. macOS blocks the first
launch after each install or upgrade until you run:

```sh
xattr -dr com.apple.quarantine /Applications/ScreenShotter.app
```

The cask is bumped automatically by the
[ScreenShotter release workflow](https://github.com/razmser/ScreenShotter/blob/master/.github/workflows/release.yml).

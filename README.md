# zthxxx's Homebrew Tap

Homebrew formulae for tools published by [@zthxxx](https://github.com/zthxxx).

## Usage

```sh
brew install zthxxx/tap/<formula>
```

Homebrew resolves `zthxxx/tap` to this repository (`zthxxx/homebrew-tap`) automatically —
there's no need to run `brew tap` first.

## Available Formulae

| Formula | Description | Upstream |
|---------|-------------|----------|
| [`hams`](./Formula/hams.rb) | Declarative IaC environment management for workstations | [zthxxx/hams](https://github.com/zthxxx/hams) |

### hams

```sh
brew install zthxxx/tap/hams
```

Supported platforms:

- macOS on Apple Silicon (`darwin-arm64`)
- Linux on x86_64 (`linux-amd64`)
- Linux on ARM64 (`linux-arm64`)

Upgrade with `brew upgrade zthxxx/tap/hams`. Uninstall with `brew uninstall zthxxx/tap/hams`.

## Updating

This tap is updated automatically by the
[release workflow](https://github.com/zthxxx/hams/blob/main/.github/workflows/release.yml)
in [`zthxxx/hams`](https://github.com/zthxxx/hams): every tag push that produces a
successful release opens a PR here bumping the formula's `version` and per-platform
`sha256` values. Please do not hand-edit `Formula/hams.rb` — if the numbers are wrong,
re-run the upstream release workflow or file an issue against `zthxxx/hams`.

## License

Tap metadata (this README, workflow files, and the formula files themselves) is
released under the [MIT License](./LICENSE). The tools installed by these formulae
each ship under their own licenses — check the individual upstream repositories.

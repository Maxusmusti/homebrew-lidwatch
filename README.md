# homebrew-lidwatch

Homebrew tap for [lidwatch](https://github.com/Maxusmusti/lidwatch) — a lightweight macOS utility that keeps your Mac awake while AI agents (Claude Code, Cursor, Aider) are running, even with the lid closed.

## Install

```bash
brew tap Maxusmusti/lidwatch
brew install lidwatch
```

## Usage

```bash
# Menubar app
brew install --cask lidwatch  # (coming soon)

# CLI — watch for agents with lid-close prevention
lidwatch watch --lid-close

# CLI — wrap a single command
lidwatch wrap -- claude
```

For full documentation, see the [lidwatch repo](https://github.com/Maxusmusti/lidwatch).

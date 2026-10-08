# Homebrew Tap for macOS Apps

Homebrew tap for macOS applications by [@nhanchaukp](https://github.com/nhanchaukp).

## Installation

Add this tap to your Homebrew:

```bash
brew tap nhanchaukp/tap
```

Install applications:

```bash
# Clipback
brew install --cask clipback

# Daily Task
brew install --cask dailytask
```

## Updating

```bash
brew update
brew upgrade --cask dailytask
```

## Available Casks

| Cask | Description | macOS |
| :--- | :--- | :--- |
| [`clipback`](Casks/clipback.rb) | Lightweight and powerful clipboard manager for macOS | >= 14.6 (Sonoma) |
| [`dailytask`](Casks/dailytask.rb) | Lightweight menu bar daily task and todo manager for macOS | >= 14.0 (Sonoma) |

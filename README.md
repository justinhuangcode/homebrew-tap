# Homebrew Tap

**English** | [中文](./README_CN.md)

[![homebrew-tap](https://img.shields.io/badge/brew_tap-justinhuangcode%2Ftap-orange?style=flat-square&logo=homebrew&logoColor=white)](https://github.com/justinhuangcode/homebrew-tap)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT)

All my tools, one fast brew install away. 🍺

## Install

```bash
brew tap justinhuangcode/tap
brew install <formula>
```

## Available Formulae

| Formula | Version | Description |
|---------|---------|-------------|
| [browsercli](https://github.com/justinhuangcode/browsercli) | 1.0.4 | A local-first browser rendering CLI for live preview, browser control, and DevTools capture. |
| [camgrab](https://github.com/justinhuangcode/camgrab) | 1.0.1 | A fast, single-binary IP camera CLI for snapshots, recording, and motion detection. |
| [mdansi](https://github.com/justinhuangcode/mdANSI) | 0.1.0 | A blazing-fast Markdown-to-ANSI CLI for terminal rendering, LLM streaming, and syntax highlighting. |
| [termpulse](https://github.com/justinhuangcode/termpulse) | 0.1.0 | A native terminal progress indicator CLI for smart detection, graceful fallback, and zero configuration. |

### browsercli

```bash
brew install justinhuangcode/tap/browsercli
```

A local-first browser rendering CLI for live preview, browser control, and DevTools capture. Write HTML/CSS/JS in a local directory and have it rendered in a real Chromium browser with full DevTools control.

### camgrab

```bash
brew install justinhuangcode/tap/camgrab
```

A fast, single-binary IP camera CLI for snapshots, recording, and motion detection. Zero external dependencies -- no ffmpeg required.

### mdansi

```bash
brew install justinhuangcode/tap/mdansi
```

A blazing-fast Markdown-to-ANSI CLI for terminal rendering, LLM streaming, and syntax highlighting. Built-in syntax highlighting for 200+ languages, streaming mode for LLM output, and TOML-configurable themes.

### termpulse

```bash
brew install justinhuangcode/tap/termpulse
```

A native terminal progress indicator CLI for smart detection, graceful fallback, and zero configuration. Auto-detects 10+ terminals, three-tier fallback (OSC 9;4 > ASCII > silent), tmux DCS passthrough.

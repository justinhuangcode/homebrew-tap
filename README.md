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
| [browserx](https://github.com/justinhuangcode/browserx) | 0.1.0 | A cross-platform browser cookie extraction CLI for session replay, authentication, and automation. |
| [browsertap](https://github.com/justinhuangcode/browsertap) | 0.1.0 | A real-time browser control CLI for live tab capture, DOM interaction, and agent automation. |
| [camgrab](https://github.com/justinhuangcode/camgrab) | 1.0.1 | A fast, single-binary IP camera CLI for snapshots, recording, and motion detection. |
| [ironclaw-zh](https://github.com/justinhuangcode/ironclaw-zh) | 0.16.1-zh.1 | A secure personal AI assistant - Chinese-localized distribution for local-first deployment and self-hosting. |
| [mdansi](https://github.com/justinhuangcode/mdANSI) | 0.1.0 | A blazing-fast Markdown-to-ANSI CLI for terminal rendering, LLM streaming, and syntax highlighting. |
| [termpulse](https://github.com/justinhuangcode/termpulse) | 0.1.0 | A native terminal progress indicator CLI for smart detection, graceful fallback, and zero configuration. |
| [tmuxpulse](https://github.com/justinhuangcode/tmuxpulse) | 0.1.0 | A real-time, event-driven tmux TUI for session monitoring, pane search, and stale cleanup. |
| [tokencost](https://github.com/justinhuangcode/tokencost) | 0.1.0 | A unified LLM token cost CLI for usage normalization, cost estimation, and multi-provider pricing. |

### browsercli

```bash
brew install justinhuangcode/tap/browsercli
```

A local-first browser rendering CLI for live preview, browser control, and DevTools capture. Write HTML/CSS/JS in a local directory and have it rendered in a real Chromium browser with full DevTools control.

### browserx

```bash
brew install justinhuangcode/tap/browserx
```

A cross-platform browser cookie extraction CLI for session replay, authentication, and automation. Extracts cookies from 9 browsers, decrypts with native OS APIs, and outputs in 5 formats.

### browsertap

```bash
brew install justinhuangcode/tap/browsertap
```

A real-time browser control CLI for live tab capture, DOM interaction, and agent automation. Tap into an already-open, already-authenticated browser session for screenshots, JS execution, smoke tests, and console capture.

### camgrab

```bash
brew install justinhuangcode/tap/camgrab
```

A fast, single-binary IP camera CLI for snapshots, recording, and motion detection. Zero external dependencies -- no ffmpeg required.

### ironclaw-zh

```bash
brew install justinhuangcode/tap/ironclaw-zh
```

A secure personal AI assistant - Chinese-localized distribution for local-first deployment and self-hosting. Community-maintained fork of [nearai/ironclaw](https://github.com/nearai/ironclaw) with full Chinese localization and local-first defaults.

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

### tmuxpulse

```bash
brew install justinhuangcode/tap/tmuxpulse
```

A real-time, event-driven tmux TUI for session monitoring, pane search, and stale cleanup. Live session tree, fuzzy pane search, and automatic stale session detection.

### tokencost

```bash
brew install justinhuangcode/tap/tokencost
```

A unified LLM token cost CLI for usage normalization, cost estimation, and multi-provider pricing. Supports OpenAI, Anthropic, Google, and more with a single unified interface.

# Homebrew Tap

[English](./README.md) | **中文**

[![homebrew-tap](https://img.shields.io/badge/brew_tap-justinhuangcode%2Ftap-orange?style=flat-square&logo=homebrew&logoColor=white)](https://github.com/justinhuangcode/homebrew-tap)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT)

我所有的工具，一次快速 brew install 即达。 🍺

## 安装

```bash
brew tap justinhuangcode/tap
brew install <formula>
```

## 可用工具

| 工具 | 版本 | 说明 |
|------|------|------|
| [browsercli](https://github.com/justinhuangcode/browsercli) | 1.0.4 | 本地优先的浏览器渲染命令行工具，支持实时预览、浏览器控制与 DevTools 数据采集。 |
| [browserx](https://github.com/justinhuangcode/browserx) | 0.1.0 | 跨平台浏览器 Cookie 提取命令行工具，支持会话重放、身份认证与自动化。 |
| [browsertap](https://github.com/justinhuangcode/browsertap) | 0.1.0 | 实时浏览器控制命令行工具，支持活跃标签捕获、DOM 交互与 Agent 自动化。 |
| [camgrab](https://github.com/justinhuangcode/camgrab) | 1.0.1 | 高速单二进制 IP 摄像头命令行工具，支持抓拍、录制与运动检测。 |
| [ironclaw-zh](https://github.com/justinhuangcode/ironclaw-zh) | 0.16.1-zh.1 | 安全可靠的个人 AI 助手——中文本地化发行版，专注本地优先部署与安全自托管。 |
| [mdansi](https://github.com/justinhuangcode/mdANSI) | 0.1.0 | 极速 Markdown 转 ANSI 命令行工具，支持终端渲染、LLM 流式输出与语法高亮。 |
| [termpulse](https://github.com/justinhuangcode/termpulse) | 0.1.0 | 原生终端进度指示命令行工具，支持智能检测、优雅回退与零配置。 |
| [tmuxpulse](https://github.com/justinhuangcode/tmuxpulse) | 0.1.0 | 实时事件驱动的 tmux 终端界面工具，支持会话监控、跨面板搜索与闲置清理。 |
| [tokencost](https://github.com/justinhuangcode/tokencost) | 0.1.0 | 统一的 LLM token 成本命令行工具，支持用量归一化、成本估算与多供应商定价。 |

### browsercli

```bash
brew install justinhuangcode/tap/browsercli
```

本地优先的浏览器渲染命令行工具，支持实时预览、浏览器控制与 DevTools 数据采集。在本地目录编写 HTML/CSS/JS，在真实 Chromium 浏览器中渲染，完整支持 DevTools 控制。

### browserx

```bash
brew install justinhuangcode/tap/browserx
```

跨平台浏览器 Cookie 提取命令行工具，支持会话重放、身份认证与自动化。提取 9 款浏览器 Cookie，使用原生 OS API 解密，支持 5 种输出格式。

### browsertap

```bash
brew install justinhuangcode/tap/browsertap
```

实时浏览器控制命令行工具，支持活跃标签捕获、DOM 交互与 Agent 自动化。接入已打开、已认证的浏览器会话，支持截图、JS 执行、冒烟测试与控制台捕获。

### camgrab

```bash
brew install justinhuangcode/tap/camgrab
```

高速单二进制 IP 摄像头命令行工具，支持抓拍、录制与运动检测。零外部依赖，无需安装 ffmpeg。

### ironclaw-zh

```bash
brew install justinhuangcode/tap/ironclaw-zh
```

安全可靠的个人 AI 助手——中文本地化发行版，专注本地优先部署与安全自托管。基于 [nearai/ironclaw](https://github.com/nearai/ironclaw) 的社区维护版本，提供完整中文本地化与本地优先默认配置。

### mdansi

```bash
brew install justinhuangcode/tap/mdansi
```

极速 Markdown 转 ANSI 命令行工具，支持终端渲染、LLM 流式输出与语法高亮。内置 200+ 种编程语言语法高亮、LLM 流式输出模式、TOML 主题配置。

### termpulse

```bash
brew install justinhuangcode/tap/termpulse
```

原生终端进度指示命令行工具，支持智能检测、优雅回退与零配置。自动检测 10+ 终端，三级降级（OSC 9;4 > ASCII > 静默），tmux DCS 透传。

### tmuxpulse

```bash
brew install justinhuangcode/tap/tmuxpulse
```

实时事件驱动的 tmux 终端界面工具，支持会话监控、跨面板搜索与闲置清理。实时会话树、模糊面板搜索、自动检测闲置会话。

### tokencost

```bash
brew install justinhuangcode/tap/tokencost
```

统一的 LLM token 成本命令行工具，支持用量归一化、成本估算与多供应商定价。支持 OpenAI、Anthropic、Google 等多家供应商，统一接口一站式查询。

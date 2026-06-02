---
title: "Browser Use"
description: "AI 浏览器自动化工具——让 AI Agent 能控制真实浏览器执行网页操作"
date: 2026-06-02
draft: false
menu: "main"
weight: 40
---

# 🌐 Browser Use — AI 浏览器自动化

> **Browser Use** 是一个开源 AI 浏览器自动化工具（GitHub 88k+ ⭐），让 AI Agent 能像人一样操控真实浏览器，执行网页操作：搜索、填表、点击、截图、数据提取……

## 快速上手

```python
from browser_use import Agent, ChatBrowserUse

agent = Agent(
    task='打开百度，搜索 "Browser Use AI"',
    llm=ChatBrowserUse(model='bu-2-0'),
)
agent.run_sync()
```

## 核心特性

| 特性 | 说明 |
|------|------|
| 🤖 **多 LLM 支持** | OpenAI、Gemini、Claude、Ollama 等 |
| 🌍 **真实浏览器** | 基于 Playwright/CDP，控制 Chrome/Edge |
| 🔧 **自定义工具** | 扩展 Agent 能力，添加自定义动作 |
| 🔌 **MCP 协议** | 通过 Model Context Protocol 集成 |
| 🖥️ **CLI 工具** | 命令行快速浏览器自动化 |
| ☁️ **云端支持** | Browser Use Cloud 提供 Stealth 浏览器 |

## 安装

```bash
pip install "browser-use[all]"
playwright install chromium
```

## 相关资源

- [GitHub 仓库](https://github.com/browser-use/browser-use)
- [官方文档](https://docs.browser-use.com)
- [云服务](https://cloud.browser-use.com)

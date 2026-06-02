---
title: "Browser Use MCP 服务集成"
date: 2026-06-02
tags: ["browser-use", "MCP", "浏览器自动化", "机蛋儿"]
categories: ["工具学习", "browser-use"]
author: "helailai"
---

# Browser Use MCP 服务集成指南

## 什么是 MCP？

MCP（Model Context Protocol）是 Anthropic 提出的开放协议，让 AI 应用（如机蛋儿）能够通过标准化接口调用外部工具和服务。

Browser Use 内置了完整的 MCP Server，让 AI Agent 可以直接控制浏览器执行网页操作。

## 启动 MCP Server

```bash
cd D:/project/browser-use
python -m browser_use.mcp
```

或者通过 AstrBot 的 MCP 配置自动管理。

## MCP 工具列表

| 工具名 | 功能 | 参数 |
|--------|------|------|
| `run_browser_task` | 运行AI浏览器任务 | task, max_steps, llm |
| `navigate` | 导航到URL | url, new_tab |
| `click_element` | 点击元素 | selector/target |
| `type_text` | 输入文本 | selector, text |
| `extract_content` | 提取内容 | goal |
| `get_page_html` | 获取HTML | - |
| `take_screenshot` | 截图 | - |
| `list_tabs` | 列出标签页 | - |
| `switch_tab` | 切换标签页 | tab_id |
| `close_tab` | 关闭标签页 | tab_id |

## 机蛋儿集成

机蛋儿已通过 MCP 协议接入 Browser Use，您可以直接使用以下指令：

```bash
# 搜索网页
机蛋儿，用浏览器搜索"2026年AI发展趋势"

# 信息采集
机蛋儿，帮我打开知乎热榜，列出前10条

# 自动化操作
机蛋儿，帮我登录xxx网站并下载一份报告
```

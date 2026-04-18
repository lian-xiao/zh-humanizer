# zh-humanizer.skill

中文文本去 AI 痕迹优化 Skill。

在不改变事实、数据和立场的前提下，识别并消除常见 AI 写作模式，让文本更自然、更像真人写作。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![AgentSkills](https://img.shields.io/badge/AgentSkills-Standard-green.svg)](https://agentskills.io)

---

## 导航

[安装](#安装) · [使用](#使用) · [功能特性](#功能特性) · [项目结构](#项目结构) · [发布到-github](#发布到-github)

---

## 适用场景

- 你已经有一段中文草稿，但读起来过于模板化
- 你希望去掉“AI 感”，同时不改变原文事实与立场
- 你需要学术/商务语气下的保守润色，而不是“重写成另一篇文章”

## 功能特性

- AI 模式识别：宏大叙事、机械三点结构、高频套话、模板化结尾
- 风格保持：学术文本保留正式与严谨，商务文本保留专业简洁
- 安全边界：不新增事实、不编造来源、不补虚构数据
- 篇幅控制：输出长度控制在原文的 3/4 到 5/4

## 安装

详细步骤见 [INSTALL.md](INSTALL.md)。

### Claude Code（当前项目安装）

```bash
mkdir -p .claude/skills
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer
```

### Claude Code（全局安装）

```bash
git clone https://github.com/<your-username>/zh-humanizer ~/.claude/skills/zh-humanizer
```

### PowerShell（Windows）

```powershell
New-Item -ItemType Directory -Force .claude/skills | Out-Null
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer
```

## 使用

在对话中给出待优化原文，并明确约束。例如：

```text
请按 zh-humanizer 规则优化下面这段中文：
1) 去掉 AI 痕迹（宏大叙事、三点结构、模板结尾等）
2) 不新增任何事实和数据
3) 保持原文风格（学术文本保持正式）
4) 输出篇幅控制在原文 3/4 到 5/4

原文：
（在这里粘贴文本）
```

## 项目结构

本项目遵循 AgentSkills 常见组织方式：一个仓库即一个 Skill 目录。

```text
zh-humanizer/
├── SKILL.md
├── references/
│   └── ai-patterns.md
├── scripts/
│   └── publish-to-github.ps1
├── INSTALL.md
├── README.md
├── CONTRIBUTING.md
├── LICENSE
└── .gitignore
```

## 贡献

欢迎提交 Issue 和 Pull Request。贡献前请阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

## License

MIT，详见 [LICENSE](LICENSE)。

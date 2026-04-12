# zh-humanizer.skill

让中文文本更像人写的 Skill。

它不会替你编故事，只会在不改事实的前提下，去掉模板化 AI 写作痕迹。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![AgentSkills](https://img.shields.io/badge/AgentSkills-Standard-green.svg)](https://agentskills.io)

---

## 安装

### Claude Code

> 说明：多数客户端会从项目根目录下的 `.claude/skills/` 读取 Skill。

```bash
# 安装到当前项目
mkdir -p .claude/skills
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer

# 或安装到全局（所有项目可用）
git clone https://github.com/<your-username>/zh-humanizer ~/.claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
# 安装到当前项目
New-Item -ItemType Directory -Force .claude/skills | Out-Null
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer

# 或安装到全局
New-Item -ItemType Directory -Force "$HOME/.claude/skills" | Out-Null
git clone https://github.com/<your-username>/zh-humanizer "$HOME/.claude/skills/zh-humanizer"
```

更多细节见 [INSTALL.md](INSTALL.md)。

---

## 使用

把原文和约束一起给模型，建议明确四点：

1. 去 AI 痕迹（宏大叙事、三点结构、模板结尾）
2. 不新增事实与数据
3. 保持原文风格（学术文本保持正式）
4. 输出长度控制在原文 3/4 到 5/4

示例：

```text
请按 zh-humanizer 规则优化下面这段中文：
1) 去掉 AI 痕迹（宏大叙事、三点结构、模板结尾等）
2) 不新增任何事实和数据
3) 保持原文风格（学术文本保持正式）
4) 输出篇幅控制在原文 3/4 到 5/4

原文：
（在这里粘贴文本）
```

---

## 功能特性

- 内容层：删除空泛拔高、无来源归因、模板化“展望”
- 语言层：降低高频 AI 词，打破机械排比与句式均匀
- 结构层：弱化僵硬三段论，保留有效信息密度
- 风格层：匹配原文语域，不把学术文改成口语贴

---

## 项目结构

```text
zh-humanizer/
├── SKILL.md
├── references/
│   └── ai-patterns.md
├── scripts/
│   └── publish-to-github.ps1
├── INSTALL.md
├── README.md
├── README_ZH.md
├── CONTRIBUTING.md
├── LICENSE
└── .gitignore
```

---

## 发布到 GitHub

仓库根目录执行：

```powershell
./scripts/publish-to-github.ps1 -RepoUrl "https://github.com/<your-username>/zh-humanizer.git"
```

如果使用 SSH：

```powershell
./scripts/publish-to-github.ps1 -RepoUrl "git@github.com:<your-username>/zh-humanizer.git"
```

---

## 注意事项

- 本 Skill 只处理表达方式，不负责事实扩写
- 结果质量取决于原文质量和约束清晰度
- 若需大幅改写，请在提示中明确授权风格重构范围

---

MIT License © zh-humanizer contributors

# INSTALL

本文档说明如何安装、验证、更新和卸载 `zh-humanizer`。

## 1. 安装到当前项目

适合只在当前仓库或当前工作目录使用。

### macOS / Linux

```bash
mkdir -p .claude/skills
git clone https://github.com/lian-xiao/zh-humanizer.git .claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force .claude/skills | Out-Null
git clone https://github.com/lian-xiao/zh-humanizer.git .claude/skills/zh-humanizer
```

## 2. 全局安装

适合在这台机器上的所有项目中复用。

### macOS / Linux

```bash
mkdir -p ~/.claude/skills
git clone https://github.com/lian-xiao/zh-humanizer.git ~/.claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force "$HOME/.claude/skills" | Out-Null
git clone https://github.com/lian-xiao/zh-humanizer.git "$HOME/.claude/skills/zh-humanizer"
```

## 3. 验证安装

1. 重启 Claude Code，或重新加载 skills。
2. 在对话中明确调用该技能，例如：

```text
请按 zh-humanizer 规则优化下面这段中文，不新增任何事实，保持原文风格。
```

3. 如果输出符合以下特征，说明安装和调用正常：

- 能识别并删减 AI 套话
- 不擅自新增事实、数据和来源
- 能基本保持原文语气与篇幅

## 4. 更新

进入安装目录后执行：

```bash
git pull
```

## 5. 卸载

删除安装目录即可。

- 当前项目安装：`.claude/skills/zh-humanizer`
- 全局安装：`~/.claude/skills/zh-humanizer`

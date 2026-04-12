# INSTALL

本文件提供 zh-humanizer.skill 的详细安装步骤。

## 1) 安装到当前项目（推荐）

在你的项目 git 根目录执行。

### macOS / Linux

```bash
mkdir -p .claude/skills
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force .claude/skills | Out-Null
git clone https://github.com/<your-username>/zh-humanizer .claude/skills/zh-humanizer
```

## 2) 安装到全局

适用于你机器上的所有项目。

### macOS / Linux

```bash
mkdir -p ~/.claude/skills
git clone https://github.com/<your-username>/zh-humanizer ~/.claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force "$HOME/.claude/skills" | Out-Null
git clone https://github.com/<your-username>/zh-humanizer "$HOME/.claude/skills/zh-humanizer"
```

## 3) 验证安装

1. 重新打开你的客户端会话。
2. 在对话中请求按 zh-humanizer 规则优化一段中文。
3. 检查结果是否满足：不增事实、保留文风、去除 AI 套话。

## 4) 更新

进入安装目录执行：

```bash
git pull
```

## 5) 卸载

删除安装目录即可：

- 当前项目：`.claude/skills/zh-humanizer`
- 全局：`~/.claude/skills/zh-humanizer`

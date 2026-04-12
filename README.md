# zh-humanizer

中文文本去 AI 痕迹技能（Skill）。

目标：在不改变原始事实和立场的前提下，降低中文文本中的模板化 AI 写作特征，让表达更自然、更像真人写作。

## 功能亮点

- 识别并处理常见 AI 写作模式：宏大叙事、机械三点结构、高频套话、模板化结尾等
- 保持原意不变：不新增事实、不编造数据、不改变立场
- 保持文风一致：支持学术、商务、通用等风格约束
- 篇幅可控：约束在原文的 3/4 到 5/4 之间

## 仓库结构

```text
zh-humanizer/
  SKILL.md
  references/
    ai-patterns.md
```

## 快速使用

### 方式一：作为 Skill 文件使用

1. 下载本仓库。
2. 打开 `SKILL.md`，将其作为你的 Skill 指令来源。
3. 在需要润色中文文本时触发该 Skill（例如："帮我去掉这段文字的 AI 痕迹"）。

### 方式二：直接复制规则使用

1. 将 `SKILL.md` 的规则复制到你的系统提示词或工作流中。
2. 将待优化原文粘贴给模型，并明确要求：
   - 不新增事实
   - 保持原立场
   - 控制篇幅在 3/4 到 5/4

## 推荐调用示例

```text
请按 zh-humanizer 规则优化下面这段中文：
1) 去掉 AI 痕迹（宏大叙事、三点结构、模板结尾等）
2) 不新增任何事实和数据
3) 保持原文风格（学术文本保持正式）
4) 输出篇幅控制在原文 3/4 到 5/4

原文：
（在这里粘贴你的文本）
```

## 版本建议

- 初始版本：`v1.0.0`
- 后续更新建议遵循语义化版本（SemVer）：`MAJOR.MINOR.PATCH`

## 发布到 GitHub

### 1. 在 GitHub 新建空仓库

仓库名建议：`zh-humanizer`

### 2. 在本地仓库根目录执行

```powershell
./scripts/publish-to-github.ps1 -RepoUrl "https://github.com/<your-username>/zh-humanizer.git"
```

如果你更偏好 SSH，也可以传入：

```powershell
./scripts/publish-to-github.ps1 -RepoUrl "git@github.com:<your-username>/zh-humanizer.git"
```

脚本会自动：

- 配置/更新 `origin` 远程
- 推送当前分支
- 推送全部标签（包含 `v1.0.0` 与 `v1.0.1`）

## 贡献

欢迎提交 Issue 和 Pull Request，帮助补充更多中文 AI 写作模式和高质量改写样例。

贡献前请阅读：`CONTRIBUTING.md`

## 许可证

本项目使用 MIT License，详见 `LICENSE`。

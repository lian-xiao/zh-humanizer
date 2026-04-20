# zh-humanizer

中文文本去 AI 痕迹优化 Skill。

在不改变事实、数据、来源和立场的前提下，识别并消除常见 AI 写作模式，让中文文本更自然、更像真实作者写出来的版本。

如果你想直接复制完整规则，请优先使用融合单文件版本：[SKILL_WITH_PATTERNS.md](SKILL_WITH_PATTERNS.md)。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![AgentSkills](https://img.shields.io/badge/AgentSkills-Standard-green.svg)](https://agentskills.io)

---

## 项目简介

`zh-humanizer` 是一个面向中文写作场景的 Humanizer 技能仓库，核心目标不是“伪装通过 AI 检测”，而是把模板化、套话化、机器味明显的文本，改写成更自然、更可信、更贴近真人表达的版本。

这个项目特别强调三件事：

- 不增事实：不补数据、不造来源、不擅自强化结论
- 保持文风：学术、商务、通用文本分别按原有语气处理
- 控制篇幅：修改后尽量保持在原文的 `4/5` 到 `5/4` 之间

---

## 效果示意

下面是一张 AI 检测结果示意截图，可作为项目优化方向的直观参考。它只代表一次样本检测结果，不应被当作唯一评判标准。![AI 检测结果示意](./media/check.png)

---

## 适用场景

- 你已经有一段中文草稿，但读起来太像模板或公告
- 你希望降低“AI 感”，同时不改变原文事实与立场
- 你需要对学术、商务、说明类文本做保守润色，而不是整篇重写
- 你想系统学习中文 AI 写作常见模式，而不只是拿到一个黑箱结果

不适合的场景：

- 需要新增事实、补充案例、扩写数据分析
- 需要改写成立场明显不同的另一篇文章
- 需要“营销化”“广告化”“夸张化”的文案重写

---

## 项目优点

相比只做简单改写的提示词，这个项目更偏“可执行规则 + 中文语境适配”：

- 中文场景优先：规则围绕中文常见 AI 腔设计，不是英文指南的直译
- 安全边界清晰：明确禁止新增事实、虚构来源、改变立场
- 文体区分明确：对学术文本额外强调正式、严谨、客观
- 规则可追溯：`SKILL.md` 负责执行逻辑，`references/ai-patterns.md` 负责模式索引
- 示例驱动：既给原则，也给优化前后对照，便于直接上手

---

## 可识别的 AI 写作模式

本项目当前整理了 **24 类** 常见中文 AI 写作模式，覆盖以下几组问题：

### 1. 内容层面

- 宏大叙事、拔高意义、空洞“趋势化”表达
- 模板化“挑战与展望”段落
- 模糊归因、无来源“专家认为”
- 宣传腔和广告式修辞

### 2. 语言与句法层面

- 高频 AI 词堆积，如“此外”“赋能”“助力”“构建”
- 强行回避简单句，把“是/有”写得过度复杂
- 三点式排比、“不仅……更……”等机械结构
- 同义词乱换、模糊词叠用、虚假范围表达

### 3. 格式与排版层面

- 破折号滥用
- 机械加粗
- “标题 + 冒号”式模板清单
- 表情符号或过度格式化痕迹

### 4. 对话与套话层面

- 客服式套话
- 过度讨好、捧哏式语气
- 空洞正能量结尾
- AI 免责声明直接混入正文

完整规则请见 [references/ai-patterns.md](references/ai-patterns.md)。

---

## 安装

详细步骤见 [INSTALL.md](INSTALL.md)。

### 安装到当前项目

```bash
mkdir -p .claude/skills
git clone https://github.com/lian-xiao/zh-humanizer.git .claude/skills/zh-humanizer
```

### 全局安装

```bash
git clone https://github.com/lian-xiao/zh-humanizer.git ~/.claude/skills/zh-humanizer
```

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force .claude/skills | Out-Null
git clone https://github.com/lian-xiao/zh-humanizer.git .claude/skills/zh-humanizer
```

---

## 使用方式

### 直接描述你的约束

```text
请按 zh-humanizer 规则优化下面这段中文：
1. 去掉 AI 痕迹，尤其是宏大叙事、三点结构和模板化结尾
2. 不新增任何事实、数据和来源
3. 保持原文风格，学术语气不要口语化
4. 输出篇幅控制在原文的 3/4 到 5/4

原文：
（在这里粘贴文本）
```

### 学术文本示例

**优化前**

> 本研究在当前时代背景下应运而生，系统分析问题现状，深入探讨核心机制，创新性提出解决方案，为行业发展提供重要支撑。

**优化后**

> 本研究分析了现有问题，并提出了一种新的解决方法。

### 商务文本示例

**优化前**

> 本次升级是公司创新能力的集中体现，为用户带来高效、便捷、流畅的全新体验，并将在未来持续赋能业务增长。

**优化后**

> 这次升级主要优化了处理速度和操作流程，用户完成常见任务会更快一些。

### 通用文本示例

**优化前**

> 这个工具不仅提升了效率，更重新定义了团队协作方式，具有深远意义。

**优化后**

> 这个工具让协作流程简单了一些，至少在交接和反馈上没以前那么绕。

---

## 工作原则

### 1. 只改表达，不增内容

如果原文没有数据，就不能补数据；如果原文没有来源，就不能补来源。

### 2. 保留信息，不保留套话

优先删除空洞评价、模板化升华、机械过渡词，保留真正有信息量的部分。

### 3. 文风优先于“去 AI 率”

学术文本首先要保证严谨，商务文本首先要保证专业，通用文本才适合更明显地增加“人味”。

### 4. 自然不等于口语化

“更像人写的”不意味着所有文本都要变随意。是否加入第一人称、情绪和节奏变化，要看原文类型。

---

## 项目结构

```text
zh-humanizer/
├── SKILL.md
├── references/
│   └── ai-patterns.md
├── INSTALL.md
├── README.md
├── CONTRIBUTING.md
├── LICENSE
└── .gitignore
```

文件说明：

- [SKILL.md](SKILL.md)：技能定义、处理流程、边界与示例
- [references/ai-patterns.md](references/ai-patterns.md)：中文 AI 写作模式识别手册
- [INSTALL.md](INSTALL.md)：安装、验证、更新与卸载说明
- [CONTRIBUTING.md](CONTRIBUTING.md)：贡献规范

---

## 参考资源

- [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing)：原始指南来源
- [WikiProject AI Cleanup](https://en.wikipedia.org/wiki/Wikipedia:WikiProject_AI_Cleanup)：维基百科 AI 清理项目
- [blader/humanizer](https://github.com/blader/humanizer)：原始英文版项目
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop)：实用工具部分的灵感来源
- [Humanizer-zh](https://github.com/op7418/Humanizer-zh)：中文 Humanizer 项目的组织和表达参考

这些资源主要用于两类工作：

- 帮助识别 AI 写作的常见模式和风险信号
- 帮助改进中文语境下的规则组织、示例写法和 README 可读性

---

## 贡献

欢迎通过 Issue 或 Pull Request 改进以下内容：

- 新的中文 AI 写作模式
- 更可靠的优化前后示例
- 学术、商务、通用场景下的规则修订
- 文档中的歧义、遗漏或不一致表述

贡献前请先阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

---

## License

MIT，详见 [LICENSE](LICENSE)。

---

## 说明

本项目文档结构参考了中文 Humanizer 类项目中更完整的 README 组织方式，但规则内容与边界约束以当前仓库的 `SKILL.md` 和 `references/ai-patterns.md` 为准。参考资源用于帮助完善规则和文档，不代表本项目简单复制外部内容。

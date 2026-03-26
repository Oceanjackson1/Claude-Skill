# PRD Skills Collection

> 79 个产品 PRD 撰写专用 AI Agent Skills，覆盖从需求探索到文档交付的完整工作流

## 什么是 Skills

Skills 是 `SKILL.md` 格式的行为注入文件。当 AI Agent 检测到对话内容匹配 Skill 的描述时，自动将专业规则注入上下文，让 Agent 在特定领域表现得像专家一样。

```
你说："帮我写一份 PRD"
  ↓ 自动匹配 description 关键词
  ↓ 注入 feature-forge Skill 的完整规则
  ↓ Agent 按照 EARS 格式生成需求文档、用户故事、验收标准
```

## 适用场景

本合集围绕**产品需求文档（PRD）撰写流程**精选，适合产品经理、创业者、项目负责人在以下场景使用：

- 从零到一定义产品需求
- 竞品分析与市场调研
- 用户研究与需求探索
- 撰写 PRD、用户故事、验收标准
- 制作路线图、甘特图、里程碑
- 生成 Pitch Deck、投资备忘录
- 产品数据分析与 A/B 测试
- 跨团队文档协作

## Skills 分类（79 个）

### 核心 PRD 撰写（5 个）

| Skill | 说明 |
|-------|------|
| `feature-forge` | 需求工坊：EARS 格式需求、用户故事、PRD 生成 |
| `product-manager-toolkit` | PM 工具箱：RICE 优先级、用户访谈、PRD、GTM |
| `notion-spec-to-implementation` | Notion PRD 转实施计划与任务追踪 |
| `closed-loop-delivery` | 基于验收标准的闭环交付 |
| `create-issue-gate` | 带严格验收标准的 Issue 创建 |

### 产品策略与市场分析（9 个）

| Skill | 说明 |
|-------|------|
| `market-research` | 市场调研、竞品分析、行业情报 |
| `market-sizing-analysis` | TAM/SAM/SOM 市场规模分析 |
| `competitive-landscape` | 竞争格局分析 |
| `startup-analyst` | 市场规模、财务建模、竞品分析 |
| `startup-business-analyst-business-case` | 投资级商业案例文档 |
| `startup-business-analyst-market-opportunity` | TAM/SAM/SOM 市场机会分析 |
| `launch-strategy` | 产品发布策略、GTM 计划 |
| `pricing-strategy` | 定价策略与包装设计 |
| `monetization` | 数字产品变现策略 |

### 头脑风暴与需求探索（6 个）

| Skill | 说明 |
|-------|------|
| `brainstorm` | 多轮协作头脑风暴 |
| `brainstorming` | 创意探索：模糊想法→结构化需求 |
| `ce-brainstorm` | 需求探索对话→结构化需求文档 |
| `multi-agent-brainstorming` | 多 Agent 结构化评审验证 |
| `hypothesis-generation` | 结构化假设生成与验证 |
| `scientific-brainstorming` | 研究方向创意探索 |

### 用户研究与设计（5 个）

| Skill | 说明 |
|-------|------|
| `ui-ux-designer` | 界面设计、线框图、用户研究 |
| `product-design` | Apple 级产品设计、UX 流程 |
| `design` | 品牌、设计 Token、UI、Logo、Mockup |
| `design-system` | 设计系统、Token 架构、组件规范 |
| `design-orchestration` | 设计工作流编排：头脑风暴→评审→执行 |

### 项目规划与路线图（7 个）

| Skill | 说明 |
|-------|------|
| `create-plans` | 层级式项目计划 |
| `timeline-creator` | 时间线、甘特图、里程碑 |
| `saas-mvp-launcher` | SaaS MVP 结构化路线图 |
| `drift-analysis` | 计划偏差分析 |
| `discover-tasks` | 任务发现与优先级排序 |
| `scrum-sage` | Scrum Master：冲刺规划、Backlog |
| `linear-usage` | Linear Issue 管理、冲刺规划 |

### 文档撰写工具（14 个）

| Skill | 说明 |
|-------|------|
| `docx` | Word 文档创建与编辑 |
| `docx-official` | Word 文档（含修订、批注） |
| `doc-coauthoring` | 结构化文档协作撰写 |
| `pptx` | PPT 演示文稿（含 Pitch Deck） |
| `pptx-official` | PPT 演示文稿创建与编辑 |
| `pdf` | PDF 创建与处理 |
| `xlsx` | Excel 表格创建与处理 |
| `spreadsheet` | 电子表格创建与操作 |
| `slides` | HTML 演示文稿 + Chart.js |
| `frontend-slides` | 动画 HTML 演示文稿 |
| `scientific-slides` | 学术报告幻灯片 |
| `investor-materials` | Pitch Deck、投资备忘录 |
| `markitdown` | Office 文件转 Markdown |
| `office-productivity` | 文档、表格、演示文稿工作流 |

### 图表与可视化（6 个）

| Skill | 说明 |
|-------|------|
| `flowchart-creator` | 流程图、决策树 |
| `mermaid-expert` | Mermaid 图表（流程、序列、ER） |
| `markdown-mermaid-writing` | Markdown + Mermaid 文档 |
| `architecture-diagram-creator` | 架构图 |
| `d3js-visualization` | D3.js 交互式数据可视化 |
| `generate-image` | AI 图片生成（流程图、图表） |

### 产品数据分析（6 个）

| Skill | 说明 |
|-------|------|
| `analytics-product` | 产品分析：PostHog/Mixpanel/OKR/漏斗 |
| `kpi-dashboard-design` | KPI 仪表板设计 |
| `ab-test-setup` | A/B 测试结构化指南 |
| `content-experimentation-best-practices` | 内容实验与 A/B 测试 |
| `google-analytics-automation` | Google Analytics 自动化 |
| `mixpanel-automation` | Mixpanel 漏斗与分群分析 |

### 协作工具集成（7 个）

| Skill | 说明 |
|-------|------|
| `figma` | Figma 设计获取与代码转换 |
| `figma-implement-design` | Figma 设计→代码 |
| `figma-automation` | Figma 自动化操作 |
| `google-slides-automation` | Google Slides 自动化 |
| `atlassian-mcp` | Jira/Confluence 集成 |
| `notion-knowledge-capture` | Notion 知识捕获 |
| `notion-meeting-intelligence` | Notion 会议纪要 |
| `notion-research-documentation` | Notion 研究文档 |

### 撰写与沟通（9 个）

| Skill | 说明 |
|-------|------|
| `copywriting` | 营销文案撰写 |
| `content-creator` | 内容创作策略 |
| `content-marketer` | 内容营销策略 |
| `internal-comms` | 内部沟通文案 |
| `internal-comms-anthropic` | 内部沟通（社区版） |
| `brand-guidelines` | 品牌指南 |
| `brand` | 品牌标识设计 |
| `professional-proofreader` | 专业校对 |
| `beautiful-prose` | 优美文案撰写 |

### 其他辅助（5 个）

| Skill | 说明 |
|-------|------|
| `data-storytelling` | 数据叙事 |
| `theme-factory` | 文档/幻灯片主题样式 |
| `canvas-design` | Canvas 视觉设计 |
| `algorithmic-art` | 算法艺术生成 |

## 快速安装

```bash
git clone https://github.com/Oceanjackson1/Claude-Skill.git ~/claude-skills
cd ~/claude-skills
bash setup.sh
```

`setup.sh` 会自动完成以下操作：

1. 创建符号链接 `~/.claude/skills/` → 本仓库（Claude Code + VS Code）
2. 创建符号链接 `~/.codex/skills/` → 本仓库（Codex CLI）
3. 保留 Codex 的 `.system/` 内置技能
4. 验证安装结果

安装完成后重启 Claude Code / Codex CLI 即可生效。

## 手动安装

```bash
# Claude Code / VS Code Claude
ln -sf "$(pwd)" ~/.claude/skills

# Codex CLI（可选）
ln -sf "$(pwd)" ~/.codex/skills
```

## 使用方式

### 自动触发

Skills 会根据对话内容自动激活，无需任何操作：

| 你说的话 | 触发的 Skill | 效果 |
|---------|-------------|------|
| "帮我写一份 PRD" | `feature-forge` | EARS 格式需求 + 用户故事 + 验收标准 |
| "做个竞品分析" | `market-research` | 结构化竞品调研报告 |
| "TAM 有多大" | `market-sizing-analysis` | TAM/SAM/SOM 市场规模计算 |
| "做个 Pitch Deck" | `pptx` + `investor-materials` | 投资级演示文稿 |
| "帮我头脑风暴一下" | `brainstorming` | 结构化创意探索 |
| "画个流程图" | `flowchart-creator` | HTML 流程图 + 决策树 |
| "写个产品发布计划" | `launch-strategy` | GTM 策略 + 发布路线图 |

### 手动触发

在对话中输入 `/skill-name` 强制激活：

```
/feature-forge              — PRD 需求工坊
/product-manager-toolkit    — PM 全套工具
/market-research            — 市场调研
/brainstorming              — 头脑风暴
/timeline-creator           — 路线图/甘特图
/slides                     — HTML 演示文稿
/investor-materials         — Pitch Deck
```

## 兼容平台

```
~/.claude/skills  ──┐
                    ├──→  ~/claude-skills/（79 个 PRD Skills）
~/.codex/skills   ──┘
                         ↑
                    一份文件，三端共享
                    Claude Code / VS Code / Codex CLI
```

## PRD 撰写工作流示例

```
1. 需求探索        /brainstorming → /ce-brainstorm
                    ↓
2. 市场验证        /market-research → /market-sizing-analysis → /competitive-landscape
                    ↓
3. 需求定义        /feature-forge → /product-manager-toolkit
                    ↓
4. 文档撰写        /docx 或 /pptx → /doc-coauthoring
                    ↓
5. 设计协作        /figma → /ui-ux-designer → /design-system
                    ↓
6. 项目规划        /create-plans → /timeline-creator → /linear-usage
                    ↓
7. 数据验证        /ab-test-setup → /analytics-product → /kpi-dashboard-design
                    ↓
8. 发布上线        /launch-strategy → /investor-materials
```

## SKILL.md 格式

每个 Skill 是一个目录，包含一个 `SKILL.md` 文件：

```markdown
---
name: my-skill
description: "触发条件描述。当对话匹配这些关键词时自动激活。"
---

# Skill 正文

这里写 Agent 需要遵循的规则和指令。
激活后，完整正文会被注入到 Agent 的上下文中。
```

## Token 开销

| 项目 | 开销 |
|------|------|
| 79 个 Skill 元数据索引（固定） | ~4K tokens（占 1M 上下文的 0.4%） |
| 单个 Skill 正文（按需） | ~2K tokens（中位数） |
| 典型场景（触发 3 个） | ~10K tokens |

相比全量 1900+ Skills 的 84K 固定开销，PRD 精选版仅 4K，上下文利用率提升 20 倍。

## 贡献

欢迎提交 PR 添加新的 PRD 相关 Skills。每个 Skill 需要：

1. 创建以 skill 名称命名的目录
2. 在目录中创建 `SKILL.md` 文件
3. 包含有效的 frontmatter（`name` + `description`）
4. 正文中写明 Agent 需要遵循的规则
5. 确保与产品 PRD 撰写流程直接相关

## License

本仓库是社区 Skills 的聚合集合，各 Skill 版权归原作者所有。

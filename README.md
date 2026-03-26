# Claude & Codex Skills Collection

> 1900+ AI Agent Skills，一键全局接入 Claude Code / VS Code Claude / OpenAI Codex CLI

## 什么是 Skills

Skills 是 `SKILL.md` 格式的行为注入文件。当 AI Agent 检测到对话内容匹配 Skill 的描述时，自动将专业规则注入上下文，让 Agent 在特定领域表现得像专家一样。

```
你说："帮我写一个 FastAPI 服务"
  ↓ 自动匹配 description 关键词
  ↓ 注入 fastapi-pro Skill 的完整规则
  ↓ Agent 按照最佳实践编写代码
```

## 数量统计

| 分类 | 数量 |
|------|------|
| Frontend & UI/UX | 636 |
| Git & Workflow | 243 |
| AI & Machine Learning | 200 |
| Security & Penetration Testing | 164 |
| Backend & API | 116 |
| Testing & QA | 60 |
| Cloud Services | 59 |
| SEO & Marketing | 58 |
| DevOps & Infrastructure | 55 |
| Database | 35 |
| Document Processing | 8 |
| Mobile Development | 7 |
| Web Scraping & Automation | 6 |
| Other | 254 |
| **Total** | **1901** |

## 来源

Skills 汇集自以下项目和官方仓库：

| 来源 | 说明 |
|------|------|
| [anthropics/skills](https://github.com/anthropics/skills) | Anthropic 官方 Skills |
| [openai/skills](https://github.com/openai/skills) | OpenAI 官方 Curated Skills |
| [sickn33/antigravity-awesome-skills](https://github.com/sickn33/antigravity-awesome-skills) | 1200+ 社区 Skills 合集 |
| [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | Composio 整理的 Skills 列表 |
| [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) | Claude Code 生态资源 |
| [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | 跨平台 Agent Skills 索引 |
| [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 社区 Skills 合集 |
| [rohitg00/awesome-claude-code-toolkit](https://github.com/rohitg00/awesome-claude-code-toolkit) | Claude Code 工具包 |
| [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) | Claude Code 全资源 |
| [cloudflare/skills](https://github.com/cloudflare/skills) | Cloudflare Workers/Wrangler |
| [getsentry/agent-skills](https://github.com/getsentry/agent-skills) | Sentry 错误监控 |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Vercel/Next.js 部署 |
| [stripe/ai](https://github.com/stripe/ai) | Stripe 支付集成 |
| [hashicorp/agent-skills](https://github.com/hashicorp/agent-skills) | Terraform IaC |
| [sanity-io/agent-toolkit](https://github.com/sanity-io/agent-toolkit) | Sanity CMS |
| [better-auth/skills](https://github.com/better-auth/skills) | Better Auth 认证 |
| [replicate/skills](https://github.com/replicate/skills) | Replicate AI 模型 |
| [tinybirdco/tinybird-agent-skills](https://github.com/tinybirdco/tinybird-agent-skills) | Tinybird 数据分析 |
| [obra/superpowers](https://github.com/obra/superpowers) | Superpowers 插件系统 |

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

如果不想运行脚本，手动执行：

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
| "帮我写一个 React 组件" | `react-patterns` | 注入 React Hooks、组合模式最佳实践 |
| "commit 代码" | `commit` | 按照 Conventional Commit 格式提交 |
| "部署到 Vercel" | `deploy-to-vercel` | Vercel 部署最佳实践 |
| "爬取这个网站" | `scrapling-official` | 反爬绕过 + 自适应爬虫 |
| "做一个安全审计" | `security-audit` | OWASP Top 10 检查清单 |

### 手动触发

在对话中输入 `/skill-name` 强制激活：

```
/commit              — 规范化提交
/react-patterns      — React 最佳实践
/fastapi-pro         — FastAPI 专家模式
/kubernetes-architect — K8s 架构设计
/security-audit      — 安全审计
```

## 架构

```
~/.claude/skills  ──┐
                    ├──→  ~/claude-skills/（1901 个 SKILL.md）
~/.codex/skills   ──┘
                         ↑
                    一份文件，三端共享
                    Claude Code / VS Code / Codex CLI
```

### 触发流程

```
┌─ 启动时 ──────────────────────────────┐
│  索引所有 SKILL.md 的 name+description │
│  （只读 frontmatter，不读正文）         │
└───────────────────────────────────────┘
                  ↓
┌─ 对话中 ──────────────────────────────┐
│  用户消息 ←→ 匹配 description 关键词   │
│  或用户输入 /skill-name               │
└───────────────────────────────────────┘
                  ↓
┌─ 激活 ────────────────────────────────┐
│  注入 SKILL.md 完整正文到上下文         │
│  Agent 按照正文中的规则和指令行动       │
└───────────────────────────────────────┘
```

## 目录结构

```
claude-skills/
├── setup.sh                    # 一键安装脚本
├── README.md                   # 本文件
├── .system/                    # Codex CLI 内置技能
│   ├── openai-docs/
│   ├── skill-creator/
│   └── skill-installer/
├── react-patterns/             # 示例：React 最佳实践
│   └── SKILL.md
├── fastapi-pro/                # 示例：FastAPI 专家
│   └── SKILL.md
├── commit/                     # 示例：规范化提交
│   └── SKILL.md
└── ... (1901 个 skill 目录)
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

- `name`：Skill 名称，也是手动触发时的 `/name`
- `description`：触发条件，Agent 根据这个字段决定是否自动激活

## Token 开销

| 项目 | 开销 |
|------|------|
| 元数据索引（固定） | ~84K tokens（占 1M 上下文的 8.4%） |
| 单个 Skill 正文（按需） | ~2K tokens（中位数） |
| 典型场景（3 个 Skill） | ~91K tokens |

Skills 不会全部同时加载——只有被匹配到的才会注入正文。

## 贡献

欢迎提交 PR 添加新的 Skills。每个 Skill 需要：

1. 创建以 skill 名称命名的目录
2. 在目录中创建 `SKILL.md` 文件
3. 包含有效的 frontmatter（`name` + `description`）
4. 正文中写明 Agent 需要遵循的规则

## License

本仓库是社区 Skills 的聚合集合，各 Skill 版权归原作者所有。

# OpenClaw 2026.6.1 环境备份

备份时间：2026-06-13 21:41 (GMT+8)

## 备份内容

### 1. openclaw.json
主配置文件（已脱敏，需手动填入 TOKEN 和密钥）

### 2. workspaces/
三个智能体的工作区文件：
- `main/` - 主助手（小焱）
- `learner/` - 学习助手（学伴）
- `comic/` - AI漫剧助手（漫灵）

每个工作区包含：
- AGENTS.md - 工作流定义
- SOUL.md - 人格定义
- IDENTITY.md - 身份信息
- memory/ - 记忆文件（如有）

### 3. agents-config/
智能体模型配置（models.json）

## 恢复步骤

1. 安装 OpenClaw 2026.6.1
2. 复制 `openclaw.json` 到 `~/.openclaw/`
3. 手动填入你的 TOKEN 和密钥
4. 复制工作区文件到对应位置：
   ```bash
   cp -r workspaces/main ~/.openclaw/workspace
   cp -r workspaces/learner ~/.openclaw/workspace-learner
   cp -r workspaces/comic ~/.openclaw/workspace-comic
   ```
5. 重启 Gateway：`openclaw gateway restart`

## 注意事项

- ⚠️ 恢复前请先备份当前配置
- ⚠️ 需要手动配置 TOKEN 和密钥
- ⚠️ 会话历史（sessions）未备份，恢复后会是全新状态

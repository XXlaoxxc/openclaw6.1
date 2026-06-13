# 第19章：登录与用户环境

## 📖 核心知识点

### 19.1 登录 Shell 读取的配置
```
/etc/profile → ~/.bash_profile → ~/.bashrc → /etc/bashrc
```

| 文件 | 作用 |
|------|------|
| /etc/profile | 全局环境变量 |
| ~/.bash_profile | 用户个人登录配置 |
| ~/.bashrc | 用户个人 Shell 配置 |
| /etc/bashrc | 全局 Shell 配置 |

### 19.2 环境变量
```bash
# 查看环境变量
env                     # 所有环境变量
echo $PATH              # 命令搜索路径
echo $HOME              # 家目录

# 设置环境变量
export MY_VAR="hello"   # 临时设置
# 永久设置：写入 ~/.bashrc 或 ~/.bash_profile
```

### 19.3 重要环境变量
| 变量 | 说明 |
|------|------|
| PATH | 命令搜索路径 |
| HOME | 家目录 |
| USER | 当前用户名 |
| SHELL | 当前 Shell |
| LANG | 语言设置 |
| PWD | 当前目录 |
| PS1 | 命令提示符格式 |

### 19.4 PAM（可插拔认证模块）
- 配置文件：`/etc/pam.d/`
- 功能：统一认证机制（密码、指纹、LDAP 等）

## 🔑 关键概念

- **login shell vs non-login shell**：是否经过登录流程
- **source 命令**：`source ~/.bashrc` 重新加载配置

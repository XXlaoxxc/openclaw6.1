# 第18章：系统服务管理

## 📖 核心知识点

### 18.1 systemd 服务管理
```bash
# 服务操作
systemctl start service       # 启动
systemctl stop service        # 停止
systemctl restart service     # 重启
systemctl reload service      # 重新加载配置
systemctl status service      # 查看状态

# 开机自启
systemctl enable service      # 启用自启
systemctl disable service     # 禁用自启
systemctl is-enabled service  # 查看是否自启
```

### 18.2 常见服务
| 服务 | 功能 |
|------|------|
| sshd | SSH 远程登录 |
| firewalld | 防火墙 |
| NetworkManager | 网络管理 |
| crond | 定时任务 |
| httpd/nginx | Web 服务 |
| named | DNS 服务 |

### 18.3 服务文件
- 位置：`/usr/lib/systemd/system/`
- 格式：`.service` 文件

```ini
[Unit]
Description=My Service
After=network.target

[Service]
ExecStart=/usr/bin/my-service
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

## 🔑 关键概念

- **daemon**：后台运行的服务进程
- **socket**：服务监听的网络端口
- **timer**：systemd 的定时任务（替代 cron）

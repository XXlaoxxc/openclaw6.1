# 第20章：日志与系统备份

## 📖 核心知识点

### 20.1 日志文件
| 日志文件 | 内容 |
|----------|------|
| /var/log/messages | 系统通用日志 |
| /var/log/secure | 认证相关日志 |
| /var/log/cron | 定时任务日志 |
| /var/log/boot.log | 启动日志 |
| /var/log/dmesg | 内核日志 |

```bash
tail -f /var/log/messages     # 实时查看日志
journalctl -xe                # 查看 systemd 日志
journalctl -u sshd            # 查看某服务日志
```

### 20.2 logrotate（日志轮转）
- 配置文件：`/etc/logrotate.conf`
- 功能：自动切割、压缩、删除旧日志

### 20.3 备份策略
| 策略 | 说明 |
|------|------|
| 完全备份 | 备份所有数据 |
| 增量备份 | 只备份变化的数据 |
| 差异备份 | 备份与完全备份的差异 |

### 20.4 备份命令
```bash
# rsync（推荐）
rsync -avh /source /backup              # 本地备份
rsync -avh /source user@host:/backup    # 远程备份

# dump/restore（ext4 专用）
dump -0u -f /backup/full.bak /home

# dd（磁盘镜像）
dd if=/dev/sda of=/backup/disk.img
```

## 🔑 关键概念

- **日志级别**：emerg → alert → crit → err → warning → notice → info → debug
- **3-2-1 备份原则**：3份数据、2种介质、1份异地

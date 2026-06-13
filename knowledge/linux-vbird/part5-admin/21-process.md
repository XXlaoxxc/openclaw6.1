# 第21章：进程管理与系统监控

## 📖 核心知识点

### 21.1 进程查看
```bash
ps aux              # 查看所有进程
ps -ef              # 查看所有进程（另一种格式）
ps aux | grep nginx # 查找特定进程

top                 # 实时进程监控
htop                # 增强版 top（需安装）
```

### 21.2 进程状态
| 状态 | 说明 |
|------|------|
| R | 运行中 |
| S | 睡眠（等待事件） |
| D | 不可中断睡眠 |
| Z | 僵尸进程 |
| T | 已停止 |

### 21.3 进程管理
```bash
# 后台运行
command &             # 放入后台
nohup command &       # 后台运行且不受终端关闭影响

# 作业控制
jobs                  # 查看后台作业
fg %1                 # 将作业 1 放到前台
bg %1                 # 将作业 1 在后台继续
Ctrl+Z                # 暂停当前进程

# 终止进程
kill PID              # 发送 SIGTERM
kill -9 PID           # 强制终止（SIGKILL）
killall process_name  # 按名称终止
```

### 21.4 系统监控
```bash
# 系统信息
uptime                # 运行时间和负载
free -h               # 内存使用
df -h                 # 磁盘使用
du -sh /path          # 目录大小

# 性能监控
vmstat 1              # 每秒刷新系统状态
iostat                # I/O 统计
sar                   # 系统活动报告
```

## 🔑 关键概念

- **PID**：进程标识符
- **信号（Signal）**：进程间通信机制
- **僵尸进程**：已终止但未被回收的进程

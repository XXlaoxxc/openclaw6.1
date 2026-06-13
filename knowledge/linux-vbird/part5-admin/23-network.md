# 第23章：网络配置与远程连接

## 📖 核心知识点

### 23.1 网络基础命令
| 命令 | 功能 |
|------|------|
| ip addr | 查看 IP 地址 |
| ip route | 查看路由表 |
| ping | 测试连通性 |
| traceroute | 追踪路由路径 |
| netstat | 查看网络连接/端口 |
| ss | 查看 socket 统计（替代 netstat） |
| dig/nslookup | DNS 查询 |

### 23.2 网络配置
```bash
# 临时配置 IP
ip addr add 192.168.1.100/24 dev eth0

# 永久配置（CentOS 7）
vim /etc/sysconfig/network-scripts/ifcfg-eth0
# TYPE=Ethernet
# BOOTPROTO=static
# IPADDR=192.168.1.100
# NETMASK=255.255.255.0
# GATEWAY=192.168.1.1
# DNS1=8.8.8.8

# 重启网络
systemctl restart network
# 或使用 NetworkManager
nmcli connection reload
```

### 23.3 SSH 远程连接
```bash
# 基本连接
ssh user@host
ssh -p 2222 user@host     # 指定端口

# 密钥认证
ssh-keygen -t rsa         # 生成密钥对
ssh-copy-id user@host     # 复制公钥到远程

# 文件传输
scp file user@host:/path  # 上传
scp user@host:/path file  # 下载
rsync -avh src/ user@host:/dest/  # 同步
```

### 23.4 防火墙基础
```bash
firewall-cmd --state                          # 查看状态
firewall-cmd --add-port=80/tcp --permanent    # 开放端口
firewall-cmd --reload                         # 重载规则
firewall-cmd --list-all                       # 查看所有规则
```

## 🔑 关键概念

- **IP 地址**：网络中设备的唯一标识
- **端口**：服务监听的"门牌号"
- **SSH 密钥**：比密码更安全的认证方式

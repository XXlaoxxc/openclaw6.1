# 第15章：用户管理与 ACL

## 📖 核心知识点

### 15.1 用户管理命令
| 命令 | 功能 |
|------|------|
| useradd | 添加用户 |
| usermod | 修改用户属性 |
| userdel | 删除用户 |
| passwd | 设置密码 |
| su | 切换用户 |
| sudo | 以其他用户身份执行 |

### 15.2 useradd 选项
```bash
useradd -m -g group -G group2 -s /bin/bash username
# -m  创建家目录
# -g  主要群组
# -G  附加群组
# -s  登录 Shell
```

### 15.3 passwd 管理
```bash
passwd username          # 修改密码
passwd -l username       # 锁定账号
passwd -u username       # 解锁账号
passwd -S username       # 查看密码状态
```

### 15.4 sudo 配置
```bash
visudo                   # 编辑 sudoers 文件
# 格式：用户 主机=(身份) 命令
username ALL=(ALL) ALL   # 允许执行所有命令
```

### 15.5 ACL（访问控制列表）
```bash
# 查看 ACL
getfacl file

# 设置 ACL
setfacl -m u:user:rwx file      # 给指定用户设置权限
setfacl -m g:group:rx file      # 给指定群组设置权限
setfacl -x u:user file          # 删除 ACL 条目

# 默认 ACL（对新建文件生效）
setfacl -d -m u:user:rwx dir/
```

## 🔑 关键概念

- **/etc/sudoers**：sudo 权限配置文件
- **ACL**：比传统权限更细粒度的控制
- **su vs sudo**：su 切换用户，sudo 临时提权

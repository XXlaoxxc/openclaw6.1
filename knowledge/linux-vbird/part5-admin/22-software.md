# 第22章：软件安装

## 📖 核心知识点

### 22.1 软件安装方式
| 方式 | 说明 | 优缺点 |
|------|------|--------|
| RPM 包 | Red Hat 系包管理 | 简单，但依赖问题 |
| YUM/DNF | 在线包管理 | 自动解决依赖 |
| 源码编译 | 从源码编译安装 | 灵活，但复杂 |
| 通用包 | snap、flatpak | 跨发行版 |

### 22.2 RPM 命令
```bash
rpm -ivh package.rpm        # 安装
rpm -Uvh package.rpm        # 升级
rpm -e package              # 卸载
rpm -qi package             # 查看信息
rpm -ql package             # 列出文件
rpm -qf /path/to/file       # 查询文件属于哪个包
```

### 22.3 YUM/DNF
```bash
yum install package         # 安装
yum remove package          # 卸载
yum update                  # 更新所有
yum search keyword          # 搜索
yum info package            # 查看详情
yum clean all               # 清理缓存

# CentOS 8+ 使用 dnf（兼容 yum 命令）
dnf install package
```

### 22.4 源码编译安装
```bash
# 三步曲
./configure --prefix=/usr/local   # 配置（检查依赖、生成 Makefile）
make                               # 编译
make install                       # 安装

# 卸载（通常没有 uninstall，需手动删除）
```

## 🔑 关键概念

- **依赖关系**：软件包之间的依赖问题（RPM 的痛点）
- **仓库（repo）**：软件包的在线存储库
- **编译**：将源代码转换为可执行文件

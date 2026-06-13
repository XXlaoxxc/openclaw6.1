# 第17章：系统启动与内核

## 📖 核心知识点

### 17.1 启动流程
```
BIOS/UEFI → MBR/EFI → GRUB2 → 内核（vmlinuz）→ initramfs → systemd → 系统就绪
```

### 17.2 GRUB2 引导加载器
- 配置文件：`/boot/grub2/grub.cfg`
- 功能：选择操作系统、传递内核参数

```bash
grub2-mkconfig -o /boot/grub2/grub.cfg  # 重新生成配置
```

### 17.3 systemd 启动
- **target**：运行级别（类似以前的 runlevel）
| target | 说明 |
|--------|------|
| multi-user.target | 多用户命令行（相当于 runlevel 3） |
| graphical.target | 图形界面（相当于 runlevel 5） |
| rescue.target | 救援模式 |

```bash
systemctl get-default               # 查看默认 target
systemctl set-default multi-user    # 设置默认
```

### 17.4 内核管理
```bash
uname -r                # 查看内核版本
ls /boot/vmlinuz-*      # 查看已安装内核
```

## 🔑 关键概念

- **initramfs**：启动时加载的临时根文件系统
- **systemd**：现代 Linux 的 init 系统
- **内核模块**：可动态加载的驱动（`lsmod`、`modprobe`）

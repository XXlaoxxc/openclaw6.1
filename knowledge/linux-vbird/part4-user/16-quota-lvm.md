# 第16章：磁盘配额与高级文件系统

## 📖 核心知识点

### 16.1 磁盘配额（quota）
- 限制用户/群组可使用的磁盘空间
- 防止某个用户占满磁盘

```bash
# 设置配额
edquota -u username
# 设置 soft limit 和 hard limit
```

### 16.2 LVM（逻辑卷管理）
```
物理卷（PV）→ 卷组（VG）→ 逻辑卷（LV）
  /dev/sda1    vg0        lv_data
```

| 概念 | 说明 |
|------|------|
| PV | 物理卷，实际磁盘分区 |
| VG | 卷组，多个 PV 的集合 |
| LV | 逻辑卷，从 VG 划分的"虚拟分区" |

### 16.3 LVM 常用命令
| 操作 | PV | VG | LV |
|------|----|----|-----|
| 创建 | pvcreate | vgcreate | lvcreate |
| 显示 | pvdisplay | vgdisplay | lvdisplay |
| 扩展 | — | vgextend | lvextend |
| 缩减 | — | vgreduce | lvreduce |

### 16.4 LVM 扩容流程
```bash
lvextend -L +5G /dev/vg0/lv_data   # 扩展 LV
resize2fs /dev/vg0/lv_data          # 扩展 ext4 文件系统
xfs_growfs /mount/point             # 扩展 xfs 文件系统
```

## 🔑 关键概念

- **LVM 优势**：动态调整大小，跨磁盘合并
- **快照**：LVM 支持快照备份
- **注意**：LVM 缩减有风险，建议先备份

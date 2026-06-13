# 第10章：压缩与打包

## 📖 核心知识点

### 10.1 压缩与打包的区别
- **打包**：多个文件合并成一个文件（tar）
- **压缩**：减小文件体积（gzip、bzip2、xz）

### 10.2 压缩命令
| 命令 | 扩展名 | 压缩率 | 速度 |
|------|--------|--------|------|
| gzip | .gz | 一般 | 快 |
| bzip2 | .bz2 | 较高 | 中 |
| xz | .xz | 最高 | 慢 |

### 10.3 tar 命令
```bash
# 打包
tar -cvf archive.tar file1 file2

# 打包并压缩（gzip）
tar -zcvf archive.tar.gz file1 file2

# 解打包
tar -xvf archive.tar

# 解压缩
tar -zxvf archive.tar.gz
tar -jxvf archive.tar.bz2
tar -Jxvf archive.tar.xz

# 查看内容
tar -tvf archive.tar.gz

# 解压到指定目录
tar -zxvf archive.tar.gz -C /target/dir
```

### 10.4 其他压缩命令
| 命令 | 功能 |
|------|------|
| gzip/gunzip | gzip 压缩/解压 |
| bzip2/bunzip2 | bzip2 压缩/解压 |
| xz/unxz | xz 压缩/解压 |
| zip/unzip | ZIP 格式 |

## 🔑 常用组合

```bash
# 备份并压缩
tar -zcvf backup-$(date +%Y%m%d).tar.gz /important/data

# 查看压缩包内容
tar -tvf backup.tar.gz

# 排除某些文件
tar -zcvf backup.tar.gz --exclude="*.log" /data
```

# 第12章：正则表达式与格式化处理

## 📖 核心知识点

### 12.1 正则表达式基础
| 符号 | 含义 | 示例 |
|------|------|------|
| `.` | 任意一个字符 | `a.c` 匹配 abc、axc |
| `*` | 前一个字符重复0+次 | `ab*c` 匹配 ac、abc、abbc |
| `^` | 行首 | `^hello` 以 hello 开头 |
| `$` | 行尾 | `world$` 以 world 结尾 |
| `[]` | 字符集合 | `[aeiou]` 元音字母 |
| `\` | 转义 | `\.` 匹配实际的点 |

### 12.2 grep 命令
```bash
grep 'pattern' file         # 基本搜索
grep -i 'pattern' file      # 忽略大小写
grep -n 'pattern' file      # 显示行号
grep -v 'pattern' file      # 反向匹配
grep -r 'pattern' dir/      # 递归搜索目录
grep -E 'pattern' file      # 扩展正则（等同于 egrep）
```

### 12.3 sed 命令（流编辑器）
```bash
sed 's/old/new/' file           # 替换每行第一个
sed 's/old/new/g' file          # 替换所有匹配
sed -n '5,10p' file             # 打印第5-10行
sed '/pattern/d' file           # 删除匹配行
sed -i 's/old/new/g' file       # 直接修改文件
```

### 12.4 awk 命令（文本处理）
```bash
awk '{print $1, $3}' file       # 打印第1、3列
awk -F: '{print $1}' /etc/passwd  # 指定分隔符
awk '$3 > 100 {print}' file     # 条件过滤
awk '{sum+=$1} END{print sum}'  # 求和
```

## 🔑 关键概念

- **正则表达式**：文本匹配的"模式语言"
- **管道组合**：`grep | sed | awk` 是文本处理三剑客

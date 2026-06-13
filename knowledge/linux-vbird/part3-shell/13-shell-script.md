# 第13章：Shell Scripts

## 📖 核心知识点

### 13.1 脚本基本结构
```bash
#!/bin/bash
# 这是注释
echo "Hello World"
```
- **Shebang**：`#!/bin/bash` 指定解释器
- 执行方式：`bash script.sh` 或 `chmod +x script.sh && ./script.sh`

### 13.2 变量
```bash
# 变量赋值（等号两边不能有空格！）
name="John"
age=25

# 使用变量
echo $name
echo ${name}

# 特殊变量
$0      # 脚本名称
$1-$9   # 位置参数
$#      # 参数个数
$?      # 上一个命令退出码
$$      # 当前进程 PID
```

### 13.3 条件判断
```bash
# if 语句
if [ condition ]; then
    command
elif [ condition ]; then
    command
else
    command
fi

# 常用判断
[ -f file ]     # 文件存在
[ -d dir ]      # 目录存在
[ -z string ]   # 字符串为空
[ -n string ]   # 字符串非空
[ "$a" -eq "$b" ]  # 数值相等
[ "$a" = "$b" ]    # 字符串相等
```

### 13.4 循环
```bash
# for 循环
for i in 1 2 3 4 5; do
    echo $i
done

# while 循环
while [ condition ]; do
    command
done

# 遍历文件
for file in *.txt; do
    echo "Processing: $file"
done
```

### 13.5 函数
```bash
greet() {
    echo "Hello, $1!"
}
greet "World"
```

## 🔑 关键概念

- **脚本第一行**：`#!/bin/bash`
- **方括号**：`[ ]` 内两侧必须有空格
- **双引号**：变量用双引号包裹防止空格问题

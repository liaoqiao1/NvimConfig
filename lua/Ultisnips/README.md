## 自定义代码片段: ultisnips

### 一.创建代码片段文件
1. 设置
    - `let g:UltiSnipsSnippetDirectories = ["~/.config/nvim/lua/Ultisnips/"]`
    - 说明: 该方法设置的代码片段的文件夹位置

2. 在指定的文件夹下创建 .snippets文件
    1. all.snippets
        - 所有文件类型都可用.
    2. 文件类型.snippets
        - 设置单个文件类型使用,

3. 示例
    1. python.snippets
        - 只有python类型文件可用
    2. java.snippets
        - 只有java类型文件可用
    3. all.snippets
        - 所有文件类型都可用


### 二.语法:

> snippet 触发字符 ["代码片段说明"] [参数]  
> 代码片段内容  
> endsnippet  


1. 示例
```
snippet #! "#!/usr/.." b
#!/usr/bin/env python3
$0
endsnippet
```

2. 说明:
    1. 在python文件中输人 #! 会触发该代码片段
    2. 代码片段说明与参数是可选的
    3. $0 是占位符.
    4. snippet代表开始, endsnippet代表结束
    5. 代码段与代码段之间应该由空格隔开

### 参数说明
1. b 表示触发字符应该在一行的开始
2. i 表示触发字符可以在单词内
3. e 表示自定义上下文
4. w 表示触发字符的前后必须是一个字母分界点




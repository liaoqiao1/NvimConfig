# Nvimconfig

- 事实上许多人的基础配置是相同的,这里提供的一个基础配置以免新手浪费时间去找断断续续的配置
- 每个配置文件中都提供配置信息,以便自定义进行配置.
- 基本功能如: 代码补全,代码高亮,一键编译运行,实时渲染markdown文档,文件搜索以及很受欢迎的one dark主题.

<br><br>

<h2 align="center"> 展示 </h2>

### 目录树/开始页/主题色彩

![开始页](https://gitee.com/liaoqiao123/file_code/raw/master/images/b.png)

### 智能补全/代码诊断

![代码高亮](https://gitee.com/liaoqiao123/file_code/raw/master/images/a.png)

### markdown实时预览

![代码高亮](https://gitee.com/liaoqiao123/file_code/raw/master/images/c.png)

<b>注: 内置终端, 一键运行, 函数预览, 文件搜索等等不再图示</b>

<br><br><hr>
 
### 基本要求

```
版本要求
nvim -v 7.2
python3
```

<br> 


#### 1. 安装nvim
```
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```
<br> 


#### 2. 安装nvim包管理器
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ 
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
<br><br>

<br> 

#### 3.Github下载我的配置:
1. `cd ~/.config/`
2. `git clone https://github.com/liaoqiao1/NvimConfig.git`
3. `mv NvimConfig nvim`

#### 或者在Gitee下载我的配置:
1. `cd ~/.config/`
2. `git clone https://gitee.com/liaoqiao123/nvimconfig.git`
3. `mv nvimconfig nvim`

<br><br>


#### 4. 配置概述
```
├── init.vim                #配置加载
├── lua
│   ├── 1_set.lua           #set配置
│   ├── 2_plug.lua          #插件安装
│   ├── 3_key.lua           #快捷键配置
│   ├── Lsp                 #lsp服务器/cmd补全
│   │   ├── cmp.lua
│   │   ├── handlers.lua 
│   │   └── lspinit.lua   
│   ├── PlugConfig          #插件的单独配置
│   │   ├── bufferline.lua
│   │   ├── dashboard.lua
│   │   ├── indent.lua
│   │   ├── lualine.lua
│   │   ├── markdown.lua
│   │   ├── nvimtree.lua
│   │   ├── onedarkpro.lua
│   │   ├── treesitter.lua
│   │   └── ultisnips.lua
│   └── Ultisnips           #自定义代码片段
│       ├── all.snippets
│       ├── java.snippets
│       ├── markdown.snippets
│       ├── python.snippets
│       └── README.md
└── README.md               
```
<b> 注:每个配置文件中都有尽可能详细的配置说明. 以助快速理解和自定义修改 </b>


<br><br>
>
#### 5. 常用快捷键

|自定义快捷键			                               |
|---                                       |
| vs       > 分割窗口                      |
| =        > 格式化代码                    |
| q        > 保存                          |
| w        > 退出                          |
|Ctrl-b	   > 目录树打开与关闭	           |
|Ctrl-f    > 打开文件搜索                  |
|Ctrl-d    > 关闭标签页                    |
|Shift-F12 > 代码一键运行/markdown实时渲染 |
|Shift-F11 > 标签页切换                    |
|Shift-F10 > 保存退出/关闭markdown渲染     |

<b>注:不喜欢可在3_key.lua中修改</b>




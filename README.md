# 深圳大学简历 LaTeX 模板

专为深圳大学设计的现代化简历模板，采用经典荔枝红与金色配色方案，集成深大视觉元素，使用方便。

## 快速开始

### 环境要求
- XeLaTeX 或 LuaLaTeX 引擎
- 最新版 TeX Live/MiKTeX 发行版

### 文件结构

```
.
├── cv.cls            # 模板类文件
├── figures/          # 素材目录
│   ├── avatar.pdf    # 个人照片
│   ├── header.pdf    # 页眉矢量图
│   ├── footer.pdf    # 页脚矢量图
│   ├── logo.pdf      # 中心水印
│   └── logoText.pdf  # 校徽文字
├── example-min.tex   # 最小的示例文档
└── example1.tex      # 示例文档
```

### 基础用法

参考`example-min.tex`与`example1.tex`

编译出来效果见[`example-min.pdf`](https://github.com/chenyu76/SZU-CV/releases/download/pdf/example-min.pdf)与[`example1.pdf`](https://github.com/chenyu76/SZU-CV/releases/download/pdf/example1.pdf)

## 定制指南

### 章节样式
- 现在，section具有一个可选图标参数：
  ```latex
  \section[\faIcon{icon-name}]{标题内容}
  ```
- 支持三级标题：section → subsection → subsubsection

### 颜色主题
```latex
% 主色（荔枝红）
\definecolor{primaryColor}{rgb}{0.54,0,0.23}

% 辅助色（金色）
\definecolor{secondaryColor}{rgb}{0.68,0.56,0.32}
```

### 特殊命令
- `\Cpp` 命令用于专业排版 C++ 标识符
- 支持 FontAwesome 5 图标，例如：
  ```latex
  \faIcon{github}   \faIcon{linkedin} 
  \faIcon{weixin}   \faIcon{graduation-cap}
  ```
  
### 注

部分内容参考自：
https://www.overleaf.com/latex/templates/npu-cv/mncqzxhvfzrx

可以调用的图标参看：
https://ctan.org/pkg/fontawesome5
里的Package documentation

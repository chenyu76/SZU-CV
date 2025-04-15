\ProvidesClass{cv}[CV class]

\LoadClass{ctexart}
\RequirePackage{xcolor} % 用于颜色
\definecolor{primaryColor}{rgb}{0.54,0,0.23} % 荔枝红
\definecolor{secondaryColor}{rgb}{0.68,0.56,0.32} % 金色



\RequirePackage{anyfontsize}
\RequirePackage{float}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{comment}

% 超链接
\RequirePackage{hyperref}
\hypersetup{hidelinks}

% 导入包使用图标库
\RequirePackage{fontspec}
\RequirePackage{fontawesome5}


%\usepackage{titlesec} % 用于自定义章节标题
\RequirePackage{wrapfig} % 用于文字环绕图片

\RequirePackage{etoolbox} % 用于条件判断
% 重写 section 命令
\let\oldsection\section % 保存原始的 \section 命令
\renewcommand{\section}[2][]{%
	\vspace{1em}

	{\noindent\Large\textbf{\IfValueT{#1}{\textcolor{primaryColor}{#1}}\;#2}}
	\vspace{0.3em}% 标题与横线之间的垂直距离
	\hrule height 0.5pt% 添加横线
	\vspace{1em}% 横线与文本之间的垂直距离
}
\let\oldsubsection\subsection % 保存原始的 \subsection 命令
\renewcommand{\subsection}[2][]{%
	\vspace{1em}

	{\noindent\large\textbf{\IfValueT{#1}{\textcolor{primaryColor}{#1}}\;#2}}
	\vspace{0.3em}% 标题与横线之间的垂直距离
	\hrule height 0.5pt% 添加横线
	\vspace{1em}% 横线与文本之间的垂直距离
}
\let\oldsubsubsection\subsubsection % 保存原始的 \subsubsection 命令
\renewcommand{\subsubsection}[2][]{%
	\vspace{1em}

	{\noindent\textbf{\IfValueT{#1}{\textcolor{primaryColor}{#1}}\;#2}}
	\vspace{1em}% 横线与文本之间的垂直距离
}


% 将版面设置为空，使用自定义的页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{empty}


%设置页眉页脚文字
\newcommand{\theheadertext}{深圳大学 | 个人简历}
\newcommand{\thefootertext}{\today}
\newcommand{\headertext}[1]{
	\renewcommand{\theheadertext}{#1}
}
\newcommand{\footertext}[1]{
	\renewcommand{\thefootertext}{#1}
}

% 多行环境
\RequirePackage{multicol}

\RequirePackage{atbegshi}   % 包用于在每页添加元素
\newcommand{\AddFrame}{%
	\tikz[overlay,remember picture]{
		\node[anchor=north west, inner sep=0pt, outer sep=0pt]
		at (current page.north west) 
		{\includegraphics[width=\paperwidth, height=0.75in]{./figures/header}};

		\node[anchor=north west, inner sep=0pt, outer sep=0pt]  
		at ([xshift=0.175in, yshift=-0.175in]current page.north west) 
		{\includegraphics[height=0.4in]{./figures/logoText}};

		\node[anchor=east]  
		at ([xshift=-0.175in, yshift=-0.375in]current page.north east) 
		{\textcolor{secondaryColor}{\textbf{\theheadertext}}};

		\node[anchor=south west, inner sep=0pt, outer sep=0pt]  
		at (current page.south west) 
		{\includegraphics[width=\paperwidth, height=0.5in]{./figures/footer}};

		\node[]  
		at ([yshift=0.25in]current page.south) 
		{\textcolor{secondaryColor}{\footnotesize\textbf{\thefootertext}}};

		\node[anchor=east]  
		at ([xshift=-0.175in, yshift=0.25in]current page.south east) 
		{\textcolor{secondaryColor}{\footnotesize\textbf{\thepage}}};

		\node[inner sep=0pt, outer sep=0pt]  at (current page.center) 
		{\includegraphics[width=0.618\paperwidth]{./figures/logo}};
	}
}
% 在每页调用 \AddFrame 命令
\AtBeginShipout{\AtBeginShipoutAddToBox{\AddFrame}}


% 这是个更好看的C++写法，你直接写C++的话，+号会很大，可以使用\Cpp来代替
\RequirePackage{relsize}
\RequirePackage{xspace}
\newcommand{\Cpp}{{C\nolinebreak[4]\hspace{-.05em}\raisebox{.28ex}{\relsize{-1}++}}\xspace}	

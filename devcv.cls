%------------------
%   Class
%------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{devcv}[2019/01/28 Developer CV Class v1.0]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

%------------------
%   Packages
%------------------

\setlength{\parindent}{0pt}
\usepackage{enumitem}
\setlist{nolistsep}
\usepackage[hidelinks]{hyperref}
\usepackage{moresize}
\usepackage{xcolor}
\usepackage{tabto}
\pagestyle{empty}
\definecolor{lightgray}{gray}{0.975}

%------------------
%   Layout
%------------------

\usepackage{geometry}
\geometry{
	paper=a4paper,
	top=1.5cm,
	bottom=1.5cm,
	left=1.5cm,
	right=1.5cm,
	headheight=0cm,
	footskip=0cm,
	headsep=0cm,
}

%------------------
%   Fonts
%------------------

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{fetamont}
\usepackage{fontawesome}

%------------------
%   Lists
%------------------

\usepackage{longtable}
\setlength{\LTpre}{6pt}
\setlength{\LTpost}{-6pt}
\setlength{\tabcolsep}{0pt}

\newenvironment{entrytable}{
	\begin{longtable}[H]{c c c}
}{
	\end{longtable}
}

\newenvironment{entrylist}{
	\begin{longtable}[H]{l}
}{
	\end{longtable}
}

\newcommand{\entryskill}[2]{
	\parbox[t]{0.15\textwidth}{
		{\textbf#1}
	}
	\parbox[t]{0.85\textwidth}{
		#2
		\vspace{8pt}
	}\\
}

\newcommand{\entryperson}[3]{
	\parbox[t]{0.50\textwidth}{
		\vspace{-\baselineskip}
		#3
	}
	\parbox[t]{0.25\textwidth}{
		\vspace{-\baselineskip}
		#1
	}
	\parbox[t]{0.25\textwidth}{
		\vspace{-\baselineskip}	
		#2
	}\\\\
}

\newcommand{\entryproject}[4]{
	\parbox[t]{1\textwidth}{
		{\textbf #2}{\small #3}\hfill{\small \texttt #1}\\
		#4
	}\\\\
}

\newcommand{\entryexperience}[4]{
	\parbox[t]{1\textwidth}{
		{\textbf #2}{\small #3}\hfill{\small \texttt #1}\\
		#4
	}\\\\
}
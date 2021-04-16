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


\usepackage{enumitem}
\usepackage[hidelinks]{hyperref}
\usepackage[strict]{changepage}
\usepackage{moresize}
\usepackage{setspace}
\usepackage{xcolor}
\usepackage{tabto}
\pagestyle{empty}
\setlength{\parindent}{0pt}

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
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}
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

\newenvironment{entrytext}{
	\vspace{32pt}
	\large
	\begin{adjustwidth}{1.5cm}{1.5cm}
}{
	\end{adjustwidth}
}

\newcommand{\entryprofile}[1]{
	\parbox[t]{0.80\textwidth}{
		#1
	}\\\vspace{-4pt}
}

\newcommand{\entryskill}[2]{
	\parbox[t]{0.15\textwidth}{
		{\textbf#1}
	}
	\parbox[t]{0.85\textwidth}{
		#2
	}\\\\
}

\newcommand{\entryperson}[3]{
	\parbox[t]{0.55\textwidth}{
		\vspace{-\baselineskip}
		#1
	}
	\parbox[t]{0.20\textwidth}{
		\vspace{-\baselineskip}
		#2
	}
	\parbox[t]{0.20\textwidth}{
		\vspace{-\baselineskip}	
		#3
	}\\\vspace{-4pt}
}

\newcommand{\entryproject}[4]{
	\parbox[t]{1\textwidth}{
		{\textbf #2}{\small #3}\hfill{\small \texttt #1}
		#4
	}\\
}

\newcommand{\entryexperience}[4]{
	\parbox[t]{1\textwidth}{
		{\textbf #2}{\small #3}\hfill{\small \texttt #1}
		#4
	}\\
}
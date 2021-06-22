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
\usepackage{calc}
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\definecolor{cerulean}{RGB}{4,146,194}

%------------------
%   Layout
%------------------

\usepackage{geometry}
\geometry{
	paper=a4paper,
	top=1.25cm,
	bottom=1.25cm,
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
	\vspace{16pt}
	\begin{adjustwidth}{1.25cm}{1.25cm}
	\large
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
	}\\
}

\newcommand{\entryperson}[3]{
	\parbox[t]{0.50\textwidth}{
		\vspace{-\baselineskip}
		#1
	}
	\parbox[t]{0.225\textwidth}{
		% \vspace{-\baselineskip}
		#2
	}
	\parbox[t]{0.225\textwidth}{
		% \vspace{-\baselineskip}	
		#3
	}\\\vspace{-4pt}
}

\newcommand{\entryproject}[4]{
	\parbox[t]{1.01\textwidth}{
		{\textbf #2}{\small #3}\hfill\textcolor{cerulean}{\small \textbf#1}
		#4
	}\\
}

\newcommand{\entryexperience}[4]{
	\parbox[t]{1.01\textwidth}{
		{\textbf #2}{\small #3}\hfill\textcolor{cerulean}{\small \textbf#1}
		#4
	}\\
}
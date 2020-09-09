%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer CV
% LaTeX Class
% Version 1.0 (28/1/19)
%
% This class originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Jan Vorisek (jan@vorisek.me)
% Based on a template by Jan Küster (info@jankuester.com)
% Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
%
% License:
% The MIT License
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{devcv}[2019/01/28 Developer CV Class v1.0]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options
\LoadClass{extarticle} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0pt} % Suppress paragraph indentation
\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links
\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)
\usepackage{xcolor} % Provides more color types
\usepackage{tabto} % Provides tab function
\definecolor{lightgray}{gray}{0.99} % Light Gray color type
\pagestyle{empty} % No headers or footers

%----------------------------------------------------------------------------------------
%	PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins
\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US letter size
	top=1.75cm, % Top margin
	bottom=1.75cm, % Bottom margin
	left=1.5cm, % Left margin
	right=1.5cm, % Right margin
	headheight=0.75cm, % Header height
	footskip=1cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.5cm, % Space from the top margin to the baseline of the header
	%showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage{fetamont}
%\usepackage[default]{raleway}
%\usepackage[defaultsans]{droidsans}
%\usepackage{cmbright}
%\usepackage[default]{gillius}
%\usepackage{roboto}

%----------------------------------------------------------------------------------------
%	GRAPHICS DEFINITIONS
%---------------------------------------------------------------------------------------- 

\usepackage{fontawesome} % Required for FontAwesome icons

% Command to output an icon in a gray square box
\newcommand{\icon}[1] {% The first parameter is the FontAwesome icon name
	\colorbox{lightgray}{\makebox(2, 8){\large\csname fa#1\endcsname}} % Icon and box
}

%----------------------------------------------------------------------------------------
%	CUSTOM SECTIONS
%----------------------------------------------------------------------------------------


% Command to output section title headings
\newcommand{\cvsection}[1]{ % The only parameter is the section text
	\hspace{-8pt}\colorbox{lightgray}{\makebox(80, 8){\MakeUppercase{\textit{#1}}\hfill}} % Section title
	\hrulefill % Fill the empty space with a ruler
}

%----------------------------------------------------------------------------------------
%	ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{6pt} % Change default whitespace before longtable
\setlength{\LTpost}{-6pt} % Change default whitespace after longtable
\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrytable}{
	\begin{longtable}[H]{c c c}
}{
	\end{longtable}
}

\newenvironment{entrylist}{
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\entryheader}[3]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	&\parbox[t]{0.22\textwidth}{ % 22% of the text width of the page
		#1 % Contact information text
	}
	\parbox[t]{0.56\textwidth}{ % 56% of the text width of the page
		\begin{center}#3\end{center} % Person information text
	}
	&\parbox[t]{0.22\textwidth}{ % 22% of the text width of the page
		#2 % Contact information text
	}\\\\
}

\newcommand{\entrycommon}[4]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.90\textwidth}{ % 90% of the text width of the page
		\hspace{-8pt}\textbf{#2}\small{#3}\\ % Title and Subtitle
		#4 % Bullet point text
	}
	&\parbox[t]{0.09\textwidth}{ % 10% of the text width of the page
		\small{#1} % Date text
	}\\\\
}
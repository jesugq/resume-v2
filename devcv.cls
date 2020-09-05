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

\setlength{\parindent}{0mm} % Suppress paragraph indentation
\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links
\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)
\usepackage{xcolor} % Provides more color types
\usepackage{tabto} % Provides tab function
\definecolor{lightgray}{gray}{0.95} % Light Gray color type
\pagestyle{empty} % No headers or footers

%----------------------------------------------------------------------------------------
%	PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins
\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US letter size
	top=1.75cm, % Top margin
	bottom=1.75cm, % Bottom margin
	left=2cm, % Left margin
	right=2cm, % Right margin
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

%------------------------------------------------

\usepackage{fontawesome} % Required for FontAwesome icons

% Command to output an icon in a gray square box
\newcommand{\icon}[1]{% The first parameter is the FontAwesome icon name
	\vcenteredhbox{\colorbox{lightgray}{\makebox(12, 12){\textcolor{black}{\large\csname fa#1\endcsname}}}}% Icon and box
}

%----------------------------------------------------------------------------------------
%	GRAPHICS DEFINITIONS
%---------------------------------------------------------------------------------------- 

\usepackage{tikz} % Required for creating the plots
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm} % Default tikz units

% Command to vertically centre adjacent content
\newcommand{\vcenteredhbox}[1]{% The only parameter is for the content to centre
	\begingroup%
		\setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
	\endgroup%
}

%----------------------------------------------------------------------------------------
%	CUSTOM SECTIONS
%----------------------------------------------------------------------------------------

% Command to output section title headings
\newcommand{\cvsect}[1]{% The only parameter is the section text
	\colorbox{lightgray}{\textcolor{black}{\MakeUppercase{\textbf{#1}}}} % Section title
	\vspace{8pt}
}

% Command to output skill title headings
\newcommand{\cvskill}[1]{
	\vspace{3pt}
	\textbf{#1} % Section Title
	\vspace{3pt}
}

%----------------------------------------------------------------------------------------
%	ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\entry}[4]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.175\textwidth}{% 17.5% of the text width of the page
		\small{#1} % Leftmost entry date(s) text
	}%
	&\parbox[t]{0.825\textwidth}{% 82.5% of the text width of the page
		\textbf{#2}% Entry heading text
		\hfill% Horizontal whitespace
		{\footnotesize \textbf{\textcolor{black}{#3}}}\\% Right-aligned entry qualifier text
		#4 % Entry description text
	}\\\\
}

\newcommand{\entrysmall}[2]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.15\textwidth}{% 17.5% of the text width of the page
		\textbf{\small{#1}} % Leftmost entry date(s) text
	}%
	&\parbox[t]{0.85\textwidth}{% 82.5% of the text width of the page
		{#2}% Entry heading text
	}\\
}
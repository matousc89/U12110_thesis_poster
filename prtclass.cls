% Totally amateur latex template for U12110 thesis poster.
% Author: Matous Cejnek
% In case of problems of comments, please do not contact the author.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prtclass}[2014/08/16 Example class]
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[10pt]{article}
\RequirePackage{xcolor}
\definecolor{ctu_blue}{HTML}{0065bd}

\usepackage[utf8]{inputenc}
\usepackage{sectsty}
\usepackage{geometry}
\usepackage{mathptmx} % ERROR
\usepackage{newtxtext,newtxmath}
\usepackage{calc}
\usepackage{fancyhdr}
% \usepackage[fleqn]{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{graphicx}
\usepackage{indentfirst}
\usepackage{multirow}

\hyphenpenalty 10000
\exhyphenpenalty 10000

\usepackage{caption}
\usepackage{floatrow}
\usepackage{pythonhighlight}
\floatsetup[table]{capposition=top}

\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

\pagenumbering{gobble}

\bibliographystyle{unsrt}

\sectionfont{\fontsize{12}{14}\selectfont\bfseries\Large\raggedright}

\def\address#1{\def\@address{#1}}
\newcommand{\printaddress}{\@address}
\address{}

\def\titleCZ#1{\def\@titleCZ{#1}}
\titleCZ{}

\def\titleEN#1{\def\@titleEN{#1}}
\titleEN{}

\def\supervisor#1{\def\@supervisor{#1}}
\supervisor{}


\def\thesistype#1{\def\@thesistype{#1}}
\thesistype{}

\def\abstractCZ#1{\def\@abstractCZ{#1}}
\abstractCZ{}

\def\abstractEN#1{\def\@abstractEN{#1}}
\abstractEN{}

\def\keywordsCZ#1{\def\@keywordsCZ{#1}}
\keywordsCZ{}

\def\keywordsEN#1{\def\@keywordsEN{#1}}
\keywordsEN{}

\def\pictureA#1{\def\@pictureA{#1}}
\pictureA{}

\def\pictureB#1{\def\@pictureB{#1}}
\pictureB{}



\geometry{
 a4paper,
 total={170mm,257mm},
 left=22mm,
 right=22mm,
 top=22mm,
 bottom=22mm,
 }
 
\pagestyle{fancy}
\fancyfoot{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

\newif\ifitisczech

%%This parts handles the options passed to the class.
\DeclareOption{cz}{
\itisczechtrue
}
\DeclareOption{en}{
\itisczechfalse
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%Body of the class, most of the declarations appear here.
\renewcommand{\maketitle}{%
    % header with logo
    \noindent\begin{minipage}{0.4\textwidth}
    \includegraphics[width=1.\textwidth]{figures/logo_FS.jpg}
    \end{minipage}%
    \hfill%
    \begin{minipage}{0.6\textwidth}
    \vspace{11mm}  
    \fontsize{14}{19}
    \textbf{\textcolor{ctu_blue}{
    \vspace{1mm}
    \hfill Závěrečné práce na \\
    \strut\hfill ÚSTAVU PŘÍSTROJOVÉ \\
    \strut\hfill A ŘÍDICÍ TECHNIKY}}
    \end{minipage}
    
    \vspace{5mm}  

    \noindent\begin{minipage}[t][][b]{0.15\textwidth}
    Název:
    \end{minipage}%
    \hfill%
    \begin{minipage}[t][][b]{0.85\textwidth}
        \large\textbf{\textcolor{ctu_blue}{
            \ifitisczech
                \@titleCZ \\
            \fi
            \@titleEN
        }}
    \end{minipage}

    \vspace{5mm}  

    \noindent\begin{minipage}[t]{0.15\textwidth}
        Autor:
    \end{minipage}%
    \begin{minipage}[t]{0.50\textwidth}
        \textbf{\@author}
    \end{minipage}
    \begin{minipage}[t]{0.35\textwidth}
        \hfill \textbf{\@date}
    \end{minipage}
    
    \vspace{5mm}  

    \noindent\begin{minipage}[t]{0.15\textwidth}
    Školitel:
    \end{minipage}%
    \begin{minipage}[t]{0.50\textwidth}
    \@supervisor
    \end{minipage}
    \begin{minipage}[t]{0.35\textwidth}
    \hfill \@thesistype
    \end{minipage}

    \vspace{10mm}  
    
    \noindent\begin{minipage}{0.48\textwidth}
    \@pictureA
    \end{minipage}
    \hfill
    \begin{minipage}{0.48\textwidth}
    \ifitisczech
        \fontsize{9}{11}\selectfont \textbf{Česky:} \@abstractCZ
        \\
        \vspace{6mm}
        \\
    \fi
    \fontsize{9}{11}\selectfont \textbf{English:} \@abstractEN
    \end{minipage}

    \vspace{5mm}

    \noindent\begin{minipage}{0.48\textwidth}
    \ifitisczech
        \fontsize{9}{11}\selectfont Klíčová slova: \\
        \textcolor{ctu_blue}{
        \\ \textbf{\MakeUppercase{\@keywordsCZ}}}
        \\
        \vspace{6mm}
        \\
    \fi
    \fontsize{9}{11}\selectfont Keywords: \\
    \textcolor{ctu_blue}{
    \\ \textbf{\MakeUppercase{\@keywordsEN}}}
    \end{minipage}
    \hfill
    \begin{minipage}{0.48\textwidth}
    \@pictureB
    \end{minipage}
    
    \vspace{15mm}
    
    \noindent Kontakt: \@address


}

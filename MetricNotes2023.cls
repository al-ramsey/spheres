\NeedsTeXFormat{LaTeX2e}[2020/08/18]
\ProvidesClass{MetricNotes2023}[2023/02/09 Metric Spaces 2023 Class]

\LoadClass[
    12pt,
    a4paper
]{article}

\RequirePackage[UKenglish]{babel}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{graphicx,xcolor}
%\RequirePackage{hyperref}
\RequirePackage{etoolbox,pifont,adjustbox,framed,capt-of}
%\RequirePackage{dingbat} %for the eye 
\RequirePackage{skull} %for rip
%\RequirePackage[backend=bibtex, style=ieee]{biblatex} <-- stupid
\RequirePackage[backend=bibtex]{biblatex}
\RequirePackage{csquotes}

\newcommand{\ourtitle}{Theorem}

\newenvironment{exformat}[4]{\color{#3}\begin{list}{{#2}}{} \item%
{\bf #1~\arabic{section}.\arabic{subsection}.\theexercise}\ifblank{#4}{\textbf{.\enspace}}{ (#4).}}%
{\end{list}}
%\textsc{Sample Text 0123}

\newenvironment{propformat}[4]{\quad \quad
{\sc #1~\arabic{section}.\arabic{subsection}.\theexercise}\ifblank{#4}{.\enspace}{ (#4).}}%

\newenvironment{proofformat}[4]{\quad \quad
{\sc #1.}\ifblank{#4}{}{ (#4)}\enspace}%



%\newenvironment{spicytest}[4]{\quad \quad
%{\sc #1~\arabic{section}.\arabic{subsection}.\theexercise.}\ifblank{#4}{}{ (#4)}\enspace}%

%\newenvironment{test}
%[1][]{\refstepcounter{exercise}\begin{spicytest}{Proposition}{$\skull$}{exerc}{#1}}%
%{\end{spicytest}}



\newenvironment{proposition}[1][]{\renewcommand{\ourtitle}{Proposition}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{lemma}[1][]{\renewcommand{\ourtitle}{Lemma}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{example}[1][]{\renewcommand{\ourtitle}{Example}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{remark}[1][]{\renewcommand{\ourtitle}{Remark}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{theorem}[1][]{\renewcommand{\ourtitle}{Theorem}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{corollary}[1][]{\renewcommand{\ourtitle}{Corollary}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{definition}[1][]{\renewcommand{\ourtitle}{Definition}\refstepcounter{exercise}\begin{propformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{propformat}}

\newenvironment{ourproof}[1][]{\begin{proofformat}{Proof}{$\skull$}{exerc}{#1}}%
{\end{proofformat}}



\newenvironment{exercise}[1][]{\renewcommand{\ourtitle}{Exercise}\refstepcounter{exercise}\begin{exformat}{\ourtitle}{$\skull$}{exerc}{#1}}%
{\end{exformat}}

\newenvironment{solution}{\begin{exformat}{Suggested answer}{\eye}{exerc}{}}%
{\end{exformat}}

\definecolor{exerc}{HTML}{00397E}

\newtheorem{prop}{Proposition}

%\newcounter{wop}
\newcounter{exercise}[subsection]
\def\p@exercise{\ourtitle \text{ }\thesubsection.}
%\setcounter{wop}{1}
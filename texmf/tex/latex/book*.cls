%https://www.overleaf.com/learn/latex/Writing_your_own_class

%https://en.wikibooks.org/wiki/LaTeX/Creating_Packages

% Name of class
\ProvidesClass{book*}

% Parent Class
\LoadClass{amsbook}

% Prevent Indent for Proof
% We address this here because amsbook alters proof environment
% https://tex.stackexchange.com/questions/29657/unindented-proof-in-amsbook
% https://tex.stackexchange.com/questions/49801/how-can-i-eliminate-the-vertical-extra-space-before-and-after-the-proof-environm
% Method: Check original documentation and edit

%Proof
% This re-defines the proof enviorment
\makeatletter
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep3\p@\@plus3\p@\relax %Numerical values indicate spacing. Original value is 6:   \normalfont \topsep6\p@\@plus6\p@\relax. Value 0 for no space.
  \trivlist
  %\itemindent\normalparindent
  \item[\hskip\labelsep
        \scshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\makeatother


%Proof*
%https://tex.stackexchange.com/questions/49801/how-can-i-eliminate-the-vertical-extra-space-before-and-after-the-proof-environm
%This defines a new environment: proof*
\makeatletter
\newenvironment{proof*}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \partopsep=\z@skip \topsep=\z@skip
  \trivlist
  \item[\hskip\labelsep
        \itshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\makeatother

%overwriting subsection. (amsbook does not have centered subsections).
%https://tex.stackexchange.com/questions/113607/how-can-i-center-align-subsection-heading-in-an-amsbook-document
\makeatletter
    \def\subsection{\@startsection{subsection}{2}%
      \z@{.5\linespacing\@plus.7\linespacing}{.25\linespacing}%
      {\normalfont\bfseries\centering}}
\makeatother


%overwriting subsubsection. (amsbook does not have centered subsubsections).
%https://tex.stackexchange.com/questions/113607/how-can-i-center-align-subsection-heading-in-an-amsbook-document
\makeatletter
    \def\subsubsection{\@startsection{subsubsection}{2}%
      \z@{.5\linespacing\@plus.7\linespacing}{.25\linespacing}%
      {\normalfont\bfseries\centering}}
\makeatother




% Main Class
\usepackage{main*}

\numberwithin{thm}{chapter}
\numberwithin{lem}{chapter}
\numberwithin{prop}{chapter}
\numberwithin{defn}{chapter}

%number exercises within section**
\numberwithin{exr}{section}

\numberwithin{cor}{chapter}
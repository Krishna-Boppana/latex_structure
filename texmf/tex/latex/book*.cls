%https://www.overleaf.com/learn/latex/Writing_your_own_class

%https://en.wikibooks.org/wiki/LaTeX/Creating_Packages

% Name of class
\ProvidesClass{book*}

% Parent Class
\LoadClass{amsbook}

% Main Class
\usepackage{main*}

\numberwithin{thm}{chapter}
\numberwithin{lem}{chapter}
\numberwithin{prop}{chapter}
\numberwithin{defn}{chapter}

%number exercises within section**
\numberwithin{exr}{section}

\numberwithin{cor}{chapter}
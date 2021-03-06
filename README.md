# Latex Structure

## TeX

https://www.tug.org/

## BIBTEX

http://www.bibtex.org/Using/

## Editors

Examples:
IntelliJ , Sublime, VIM etc.

### LaTex w/ Vim
https://github.com/lervag/vimtex#alternatives

### LaTex w/ IntelliJ

#### TeXify Plugin

https://github.com/Hannah-Sten/TeXiFy-IDEA

TexiFy Documentation

https://github.com/Hannah-Sten/TeXiFy-IDEA/wiki/Features

### IntelliJ Live-Templates

## Custom Packages and Files

https://www.ias.edu/math/computing/faq/local-latex-style-files

### (texmf) Local Directory 

Depending on your OS and TeX distrubtion, there exists a texmf folder in which TeX can acess to read custom .cls and .sty files. 

## MacOS instructions

https://en.wikipedia.org/wiki/Symbolic_link
1. Create Symlink
- ` ln -s "$(pwd)"/texmf ~/Library/ `



## Packages

Documentation is available in links:

### amsbok

https://ctan.org/pkg/amsbook

### amsmath

https://ctan.org/pkg/amsmath

https://ctan.math.illinois.edu/macros/latex/required/amsmath/amsldoc.pdf
(pg 20 useful resource on math operators)

#### Useful Commands
1. Declare

### amsthm

https://ctan.org/pkg/amsthm

### aomart
https://ctan.org/pkg/aomart




## Features to Consider:

### Bookstructure vs Aritcle Structre 

Examples

```
\documentclass{amsbook}
```

```
\documentclass{amsart}
```

### Title

https://en.wikibooks.org/wiki/LaTeX/Title_Creation

```
\title{...}
\author{...}
\date{...}

\begin{document}

\maketitle

\end{document}

```

### Table of Contents
```
\tableofcontents
```

\ProvidesClass{tesis}

\LoadClass{article}

\usepackage[top=.8in,left=.8in,right=.8in,bottom=1.3in,headheight=55pt]{geometry}
\usepackage{amsfonts, amssymb, amsmath}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage[nopar]{lipsum}
\usepackage{titlesec}

% \RequirePackage{titling}
% \RequirePackage{authblk}
% \RequirePackage{abstract} 
% \RequirePackage{enumitem}
% \RequirePackage{outlines}

\newif\ifreview
\newif\ifpreprint
\newif\ifnoauthor

\ifreview
  \RequirePackage{lineno}
  \linenumbers
  \onecolumn
  \renewcommand{\baselinestretch}{2}
\fi

\ifpreprint
  % If preprint option is specified, set the paper to two columns
  \twocolumn
\fi

\ifnoauthor
  % If no_author option is specified, hide the authors' names
  \renewcommand{\maketitle}{}
\fi

% \reviewfalse
% \preprintfalse
% \noauthorfalse
% \DeclareOption{review}{\reviewtrue}
% \DeclareOption{preprint}{\preprinttrue}
% \DeclareOption{no_author}{\noauthortrue}
% \ProcessOptions\relax

\fancypagestyle{plain}{
\fancyhf{}
\setlength{\headheight}{100pt}
\setlength{\footskip}{27.57227pt}
\fancyhead[L]{
    \begin{tabular}{@{}c@{\hspace{0.1cm}}c@{}}
        \includegraphics[width=1.6cm]{Front/img/logo-uees.png} & 
    \begin{minipage}{0.9\textwidth}
    \vspace{-1.5cm} % Ajusta este valor si es necesario
        \LARGE {UNIVERSIDAD DE ESPECIALIDADES ESPIRITU SANTO} \\
        \textbf {Ingeniería en Ciencias de la Computación}
    \end{minipage}
    \end{tabular}
}

\fancyfoot[L]{
    \begin{minipage}{0.5\textwidth} % Ajusta el ancho si es necesario
        \textbf{Corresponding Author:} \autor \\
        \textbf{Publication Date:} \fecha \\
        \textbf{Email:} \email \\
    \end{minipage}
}


\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
}


\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{70pt}
\setlength{\footskip}{.6in}
\fancyhead[L]{\large\textbf{\titulo}}

\rfoot{\thepage} 


\setlength{\columnsep}{16pt}
\titleformat{\section}[block]
{\normalfont\Large\bfseries}{\thesection\hspace{5pt}\vrule depth 3pt width 1pt}{5pt}{}
\raggedright

\makeatletter
\def\@fnsymbol#1{\ensuremath{\ifcase#1\or 1\or 2\or 3\or 4\or 5\else 6\fi}}
\makeatother


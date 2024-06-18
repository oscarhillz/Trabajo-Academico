\ProvidesClass{tesis}


%----------------------------------------------------------------------------------------
%	GLOBAL CONFIG
%----------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{JLA_article}[25/01/2012, v1.0]
\RequirePackage{ifthen}
\RequirePackage{calc}
% \AtEndOfClass{\RequirePackage{microtype}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% \ProcessOptions*
\LoadClass{article}
\RequirePackage{ifpdf}

%----------------------------------------------------------------------------------------
%	ARTICLE INFORMATION
%----------------------------------------------------------------------------------------
\title{{\titulo}}
\author{\autor}
\date{\fecha}
% \Volume{1}
% \Number{1}
% \Pages{1---10}
% \Doi{xxx-xxx-xxx}
% \Submitted{10/11/12}
% \Accepted{10/11/12}
% \Published{10/11/12}
% \Keywords{Include a set of keywords related to your submission. Separate them by commas.} 

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
\usepackage[utf8]{inputenc} %n/a
\usepackage[spanish]{babel} %lenguaje
\usepackage{csquotes} %complemento del lenguaje

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------
\RequirePackage{times} %fonts
\RequirePackage{mathptmx} %fonts

%----------------------------------------------------------------------
%	MARGINS	
%----------------------------------------------------------------------
\usepackage[top=.8in,left=.8in,right=.8in,bottom=1.3in,headheight=55pt]{geometry} %margenes

%----------------------------------------------------------------------
%	VARIOUS USEFUL PACKAGES
%----------------------------------------------------------------------
\usepackage{amsfonts, amssymb, amsmath} %escribir mate
\RequirePackage{graphicx,xcolor} %hacer graficos + color
\usepackage[nopar]{lipsum} % Required to insert dummy text. To be removed otherwise
\usepackage{tcolorbox} %cajas de notas

%----------------------------------------------------------------------
%	FIGURES AND TABLES CAPTIONS
%----------------------------------------------------------------------
% \RequirePackage[labelfont={bf,sf,small},%
% labelsep=period,%
% justification=raggedright]{caption}
% \setlength{\abovecaptionskip}{0pt}
% \setlength{\belowcaptionskip}{0pt}

%----------------------------------------------------------------------
%	LIST CONTROL
%----------------------------------------------------------------------  
\RequirePackage{enumitem}
%\setlist{nolistsep} % Uncomment to remove spacing between items in lists (enumerate, itemize)

%----------------------------------------------------------------------------------------
%	HYPERLINKS
%----------------------------------------------------------------------------------------
\definecolor{color1}{RGB}{0,0,200} % Color of the article title and sections
\definecolor{color2}{RGB}{0,20,20} % Color of the boxes behind the abstract and headings
\usepackage{hyperref} % Required for hyperlinks
\hypersetup{hidelinks,colorlinks,breaklinks=true,urlcolor=color2,citecolor=color1,linkcolor=color2,bookmarksopen=false,pdftitle={Oscar Hill - Tesis},pdfauthor={Oscar Youssef Hill Zouein}}

%----------------------------------------------------------------------------------------
%	TITLE FORMAT
%----------------------------------------------------------------------------------------
\usepackage{titlesec} %n/a
\usepackage{titling} % Para modificar el título
\setlength{\droptitle}{-5em} 
\pretitle{\noindent\huge\bfseries}
\posttitle{\par\vskip 0.5em}
\preauthor{\noindent\large}
\postauthor{\par\vskip 0.5em}
\predate{\noindent\large}
\postdate{\par\vskip -1em}

%----------------------------------------------------------------------------------------
%	FANCY PAGE FORMAT
%----------------------------------------------------------------------------------------
\usepackage{fancyhdr} %headers
\fancypagestyle{plain}{
    \fancyhf{}
    \setlength{\headheight}{100pt}
    \setlength{\footskip}{27.57227pt}
    \fancyhead[L]{
        \begin{tabular}{@{}c@{\hspace{0.1cm}}c@{}}
            \includegraphics[width=1.6cm]{Front/img/logo-uees.png} & 
        \begin{minipage}{0.9\textwidth}
        \vspace{-1.5cm} % Ajusta este valor si es necesario
            \Large {UNIVERSIDAD DE ESPECIALIDADES ESPIRITU SANTO} \\
            {Ingeniería en Ciencias de la Computación}
        \end{minipage}
        \end{tabular}
        \vspace{-0.5cm} % Ajusta este valor si es necesario
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

%----------------------------------------------------------------------------------------
%	PAGE FORMAT
%----------------------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{70pt}
\setlength{\footskip}{.6in}
\fancyhead[L]{\large\textbf{\titulo}}
% \fancyhead[R]{Oscar Hill}
\rfoot{\thepage} 

%----------------------------------------------------------------------------------------
%	DOCUMENT FORMAT
%----------------------------------------------------------------------------------------
\usepackage{multicol}
\setlength{\columnsep}{16pt}
\titleformat{\section}[block]
{\normalfont\Large\bfseries}{\thesection\hspace{5pt}\vrule depth 3pt width 1pt}{5pt}{}
% \raggedright

%----------------------------------------------------------------------
%	REFERENCES
%----------------------------------------------------------------------  
\usepackage[backend=biber, style=numeric, sorting=none]{biblatex} %referencias
\addbibresource{Back/referencias.bib}
% \setlength{\bibitemsep}{0.25cm}

%----------------------------------------------------------------------------------------
%	DEF COMMANDS
%----------------------------------------------------------------------------------------
\def\titulo{Propuesta de algoritmo clasificador de nube de puntos Lidar para obtener el modelo de terreno digital mediante redes neuronales}
\def\autor{Oscar Youssef Hill Zoeuin}
\def\email{ohill@uees.edu.ec}
\def\fecha{\today}
\def\espacio{\vspace{7pt}}
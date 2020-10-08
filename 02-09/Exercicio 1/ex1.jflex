%%

%standalone
%class Ex1

%%

// int x = 10;

// Desconsiderar
// \s | \t {/* nada */}

// Reservadas
"int"               {System.out.print("<INT>");}
"="                 {System.out.print("<IGUAL>");}
";"                 {System.out.print("<PeV>");}

// Identificadores
[a-zA-Z]+[0-9]*     {System.out.print("<VAR>");}
[0-9]+              {System.out.print("<NUM>");}

// Mistakes
[^\s\"\;]+            {System.out.print("<ERRO>");}
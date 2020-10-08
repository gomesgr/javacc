%%

%standalone
%class Ex2

%%

// Reservadas
"while"                 {System.out.print("<WHILE>");}
":"                     {System.out.print("<DQOT>");}
"+" | "<" | ">"         {System.out.print("<OPE>");}
";"                     {System.out.print("<END>");}
"\""                    {System.out.print("<SCAP>");}
"(" | ")" | "{" | "}"   {System.out.print("<ESCO>");}
"\\n"					{System.out.print("<NLINE>");}

// Identificadores
[a-zA-Z]+[0-9]*     {System.out.print("<VAR>");}
[0-9]+              {System.out.print("<NUM>");}
[a-zA-Z]+[\.]?      {System.out.print("<FCALL>");}

// Erros
// .                 {System.out.print("<ERRO>");}
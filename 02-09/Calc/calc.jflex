%%

%standalone
%class Calc

%%
// Especificos

"+"                     {System.out.print("<MAIS>");}
"-"                     {System.out.print("<MENOS>");}
"*"                     {System.out.print("<MULT>");}
"\/"                    {System.out.print("<DIV>");}


// Gerais
[0-9]+                  {System.out.print("<INT>");}
[0-9]+[\.][0-9]+        {System.out.print("<FLOAT>");}
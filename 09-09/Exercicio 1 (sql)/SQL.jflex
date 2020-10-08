%%

%standalone
%class SQL

// Macros

str = [a-zA-Z]+
float = [0-9]+\.[0-9]+
int = [0-9]+

%%
\s | \t | \r                {System.out.print(" ");}

"SELECT"                    {System.out.print("<SEL>");}
"FROM"                      {System.out.print("<FRM>");}
"WHERE"                     {System.out.print("<WHR>");}
"\*"                        {System.out.print("<ALL>");}
"OR" | "AND"                {System.out.print("<OLG>");}
"<" | ">" | "="             {System.out.print("<OPE>");}
"\""                        {System.out.print("<QUO>");}

// <TAB> e <COL>
{str}[a-zA-Z0-9]*           {System.out.print("<VAL>");}
{float} | \.{int}           {System.out.print("<FLO>");}
{int}                       {System.out.print("<INT>");}
\<{str}\>                   {System.out.print("<TOK>");}

.                           {System.out.print("<ERR>");}
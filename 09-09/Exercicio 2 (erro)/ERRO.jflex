// Partial javai import

import java.util.List;
import java.util.ArrayList;
%%

%standalone
%class ERRO
%line
%column
%char

%{
    int erro = 0, rsv = 0, idt = 0;
    List<Integer> colList = new ArrayList<>();
    List<Integer> rowList = new ArrayList<>();
    List<String> charList = new ArrayList<>();
%}

// Macros


str = [a-zA-Z]+
float = [0-9]+\.[0-9]+
int = [0-9]+

%%
\s | \t | \r                {System.out.print(" ");}

"SELECT"                    {rsv++; System.out.print("<SEL>");}
"FROM"                      {rsv++; System.out.print("<FRM>");}
"WHERE"                     {rsv++; System.out.print("<WHR>");}
"\*"                        {rsv++; System.out.print("<ALL>");}
"OR" | "AND"                {rsv++; System.out.print("<OLG>");}
"<" | ">" | "="             {rsv++; System.out.print("<OPE>");}
"\""                        {rsv++; System.out.print("<QUO>");}

// <TAB> e <COL>
{str}[a-zA-Z0-9]*           {idt++; System.out.print("<VAL>");}
{float} | \.{int}           {idt++; System.out.print("<FLO>");}
{int}                       {idt++; System.out.print("<INT>");}
\<{str}\>                   {idt++; System.out.print("<TOK>");}

.                           {
                                rowList.add(yyline + 1);
                                colList.add(yycolumn + 1);
                                charList.add(yytext());
                                erro++;
                            }

<<EOF>>                     {
                                System.out.println("\nPalavras reservadas -> " + rsv);
                                System.out.println("Identificadores -> " + idt);
                                System.out.println("============================");
                                for (int i = 0; i < colList.size(); i++) {
                                    System.err.print("Linha  -> \"" + rowList.get(i) + "\" ");
                                    System.err.print("Coluna -> \"" + colList.get(i) + "\" ");
                                    System.err.print("Caractere -> \"" + charList.get(i) + "\"");
                                    System.out.println();
                                }
                                System.err.print("\n" + erro + " erro(s) encontrado(s).");
                                System.out.println("\n============================");
                                return 0;
                            }

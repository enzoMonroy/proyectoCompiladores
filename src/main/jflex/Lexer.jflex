package umg.compiladores;
import java_cup.runtime.*;

%%

%public 
%class Lexer
%char
%line
%column
%cup

%{
    private Symbol symbol(int tipo, Object valor){
        return new Symbol(tipo, yyline, yycolumn, valor);
}

%}

palabra = [a-zA-Z]+
identificador = [a-zA-Z][a-zA-Z0-9]*

/*digito negativo/positivo*/
digito = [-0-9][0-9]+
comillasDobles = [\"]+
espacios_blanco = [\r|\n|\r\n| |\t]*

//decimal negativo/positivo
NUM = [-0-9][0-9]+ ("." [0-9]+)?
boolean = [\true|\false|]*

aritmetica = [\+|\-|\*\|\(|\)]*
relacional = [\>|\>=|\<|\=<|\=|\!=]*
logica = [\&&|\|| |\!]*

if = [\if|\else]*
switch = [\switch]*

for = [\for]*
while = [\while]*
doWhile = [\do|\while]*


%%



"case"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.CASE,yytext()); }
"default"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.DEFAULT,yytext()); }
"if"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.IF,yytext()); }
"else"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.ELSE,yytext()); }
"switch"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.SWITCH,yytext()); }
"do"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.DO,yytext()); }
"while"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.WHILE,yytext()); }
"="     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.ASSIG,yytext()); }
"+"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.SUMA,yytext()); }
"-"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.RESTA,yytext()); }
"*"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.MULTIPLICACION,yytext()); }
"("     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_ABRE,yytext()); }
")"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_CIERRA,yytext()); }
";"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.PUNTO_Y_COMA,yytext()); }
">"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.MAYOR,yytext()); }
">="     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.MAYORI_Q,yytext()); }
"<"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.MENOR,yytext()); }
"<="     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.MENORI_Q,yytext()); }
"="     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.IGUAL,yytext()); }
"!="     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.DIFERENTE,yytext()); }
"&&"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.AND,yytext()); }
"||"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.OR,yytext()); }
"!"     {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.NEGACION,yytext()); }
{numero} {System.out.println("se reconoce lexema: " + yytext()); return symbol(sym.NUMERO,yytext()); }
{espacios_blanco}             {System.out.println("se reconoce lexema: " + yytext()); }
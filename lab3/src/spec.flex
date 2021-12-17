// import sekcija
import java_cup.runtime.*;

%%

// sekcija opcija i deklaracija
%class MPLexer

%cup

%line
%column


%eofval{
    return new Symbol( sym.EOF );
%eofval}

// Dodatni clanovi klase
%{
    public int getLine()
    {
        return yyline;
    }
%}

//stanja
%xstate KOMENTAR

//macros
letter = [a-zA-Z]
digit = [0-9]
digit8 = [0-7]
digit16 = [0-9a-fA-F]
sign = ({digit}|{letter})

%%

// pravila
\*\* { yybegin( KOMENTAR ); }
<KOMENTAR>~"**" { yybegin( YYINITIAL ); }

[\t\n\r ] {  }

\(                              { return new Symbol( sym.OPEN_BRACKET ); }
\)                              { return new Symbol( sym.CLOSE_BRACKET ); }


//operatori
\< 									{ return new Symbol( sym.GREATER ); }
\<\= 								{ return new Symbol( sym.GREATER_EQUAL ); }
\=\= 								{ return new Symbol( sym.EQUAL ); }
\<\> 								{ return new Symbol( sym.UNEQUAL ); }
\> 									{ return new Symbol( sym.LESS ); }
\>\= 								{ return new Symbol( sym.LESS_EQUAL ); }

//separatori
; 									{ return new Symbol( sym.SEMI ); }
: 									{ return new Symbol( sym.COLON ); }
, 									{ return new Symbol( sym.COMMA ); }
\. 									{ return new Symbol( sym.DOT ); }
:= 									{ return new Symbol( sym.ASSIGN ); }

//kljucne reci

"program"							{ return new Symbol( sym.PROGRAM ); }
"begin"								{ return new Symbol( sym.BEGIN ); }
"end"								{ return new Symbol( sym.END ); }
"integer"							{ return new Symbol( sym.INTEGER ); }
"char"								{ return new Symbol( sym.CHAR ); }
"real"								{ return new Symbol( sym.REAL ); }
"boolean"							{ return new Symbol( sym.BOOLEAN ); }
"while"								{ return new Symbol( sym.WHILE ); }
"else"								{ return new Symbol( sym.ELSE ); }
"and"								{ return new Symbol( sym.AND ); }
"or"								{ return new Symbol( sym.OR ); }
"..."                           	{ return new Symbol( sym.EPSILON ); }

//boolean
"true"|"false"                  		{ return new Symbol( sym.CONST, Boolean.parseBoolean( yytext() ) );}


//identifikatori
({letter}|[$])({letter}|{digit}|[$])* 	{ return new Symbol( sym.ID, yytext() );  }

//konstante

//integer
0{digit8}+|0x{digit16}+|[1-9]{digit}*   { return new Symbol( sym.CONST ,Integer.parseInt( yytext() ) ); }
//0{digit8}+|0x{digit16}+|[1-9]{digit}+ { return new Symbol( sym.CONST, Integer.parseInt( yytext() ) ); }

//real

{digit}*\.{digit}*(E[+-]?{digit}+)?		{ return new Symbol( sym.CONST, Double.parseDouble( yytext() ) );}

// char
'{sign}'								{ return new Symbol( sym.CONST, yytext() ); }

//error symbol
.		{ System.out.println( "ERROR: " + yytext() ); }

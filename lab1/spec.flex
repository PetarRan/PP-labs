// Import

%%

// Deklaracija
%class MPLexer
%function next_token
%line
%column
%debug
%type Yytoken

%eofval{
return new Yytoken( sym.EOF, null, yyline, yycolumn);
%eofval}

%{
KWTable kwTable = new KWTable();
Yytoken getKW()
{
	return new Yytoken( kwTable.find( yytext() ),
	yytext(), yyline, yycolumn );
}
%}

// States
%xstate KOMENTAR

// Macroes
slovo = [a-zA-Z]
cifra = [0-9]
cifra8 = [0-7]
cifra16 = [0-9a-fA-F]

%%

// Pravila
\*\* { yybegin( KOMENTAR ); }
<KOMENTAR>~"**" { yybegin( YYINITIAL ); }

[\t\n\r ] { ; }

//\( { return new Yytoken( sym.LEFTPAR, yytext(), yyline, yycolumn ); }
//\) { return new Yytoken( sym.RIGHTPAR, yytext(), yyline, yycolumn ); }

// Operators
//\+ { return new Yytoken( sym.PLUS,yytext(), yyline, yycolumn ); }
//\- { return new Yytoken( sym.MINUS, yytext(), yyline, yycolumn ); }
\< { return new Yytoken( sym.GREATER, yytext(), yyline, yycolumn ); }
\<\= { return new Yytoken( sym.GREATEREQ, yytext(), yyline, yycolumn ); }
\=\= { return new Yytoken( sym.SAME, yytext(), yyline, yycolumn ); }
\<\> { return new Yytoken ( sym.DIFF, yytext(), yyline, yycolumn ); }
\> { return new Yytoken ( sym.LESS, yytext(), yyline, yycolumn ); }
\>\= { return new Yytoken ( sym.LESSEQ, yytext(), yyline, yycolumn ); }

//\* { return new Yytoken( sym.MUL,yytext(), yyline, yycolumn ); }

// Separators!
; { return new Yytoken( sym.SEMICOLON, yytext(), yyline, yycolumn ); }
: { return new Yytoken( sym.COLON, yytext(), yyline, yycolumn ); }
, { return new Yytoken( sym.COMMA, yytext(), yyline, yycolumn ); }
\. { return new Yytoken( sym.DOT, yytext(), yyline, yycolumn ); }
:= { return new Yytoken( sym.ASSIGN, yytext(), yyline, yycolumn ); }


// Keyword Sekcija
{slovo}+ { return getKW(); }

//true | false { return new Yytoken( sym.CONST, yytext(), yyline, yycolumn ); } 


// Identifiers
({slovo}|[$])({slovo}|{cifra}|[$])* { return new Yytoken(sym.ID, yytext(),yyline, yycolumn ); }

// Constants

// Int
0{cifra8}+|0x{cifra16}+|[1-9]{cifra}* { return new Yytoken( sym.CONST, yytext(), yyline, yycolumn ); }
//0{cifra8}+|0x{cifra16}+|[1-9]{cifra}+ { return new Yytoken( sym.CONST, yytext(), yyline, yycolumn ); }

// Real

{cifra}*\.{cifra}*(E[+-]?{cifra}+)? { return new Yytoken( sym.CONST, yytext(), yyline, yycolumn ); }

// Char
'.' { return new Yytoken( sym.CONST,yytext(), yyline, yycolumn ); }

// String
//'.+' { return new Yytoken( sym.CONST, yytext(), yyline, yycolumn ); }

// Error Handling
. { if (yytext() != null && yytext().length() > 0) System.out.println( "ERROR: " + yytext() ); }

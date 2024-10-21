
%{
    #include <stdio.h>
    #include <string.h>
    #include "par.tab.h"
%}

%%

"await"             { return AWAIT; }
"break"             { return BREAK; }
"case"              { return CASE; }
"catch"             { return CATCH; }
"class"             { return CLASS; }
"const"             { return CONST; }
"continue"          { return CONTINUE; }
"debugger"          { return DEBUGGER; }
"default"           { return DEFAULT; }
"delete"            { return DELETE; }
"do"                { return DO; }
"else"              { return ELSE; }
"enum"              { return ENUM; }
"export"            { return EXPORT; }
"extends"           { return EXTENDS; }
"true"              { return TRUE; }
"false"             { return FALSE; }
"finally"           { return FINALLY; }
"for"               { return FOR; }
"function"          { return FUNCTION; }
"if"                { return IF; }
"import"            { return IMPORT; }
"in"                { return IN; }
"instanceof"        { return INSTANCEOF; }
"let"               { return LET; }
"new"               { return NEW; }
"null"              { return NULL_TOK; }
"return"            { return RETURN; }
"super"             { return SUPER; }
"switch"            { return SWITCH; }
"this"              { return THIS; }
"throw"             { return THROW; }
"try"               { return TRY; }
"typeof"            { return TYPEOF; }
"var"               { return VAR; }
"void"              { return VOID; }
"while"             { return WHILE; }
"with"              { return WITH; }
"yield"             { return YIELD; }
"get"               { return GET; }
"set"               { return SET; }
"static"            { return STATIC; }
"accessor"          { return ACCESSOR; }
"from"              { return FROM; }
"of"                { return OF; }
"as"                { return AS; }
"console"           { return CONSOLE; }
"promise"           { return PROMISE; }
"Promise"           { return PROMISE; }

"??"                { return NULLISH; }
"||"                { return OR; }
"&&"                { return AND; }
"!"                 { return NOT; }
"?"                 { return CONDITIONAL; }
":"                 { return COLON; }
"+"                 { return ADD; }
"-"                 { return SUB; }
"*"                 { return MUL; }
"/"                 { return DIV; }
"%"                 { return MOD; }
"**"                { return EXP; }
"++"                { return INC; }
"--"                { return DEC; }
"|"                 { return BITOR; }
"^"                 { return BITXOR; }
"&"                 { return BITAND; }
"~"                 { return BITNOT; }
"<<"                { return SHL; }
">>"                { return SHR; }
">>>"               { return SAR; }
"="                 { return ASSIGN; }
"+="                { return ADDASSIGN; }
"-="                { return SUBASSIGN; }
"*="                { return MULASSIGN; }
"/="                { return DIVASSIGN; }
"%="                { return MODASSIGN; }
"**="               { return EXPASSIGN; }
"<<="               { return SHLASSIGN; }
">>="               { return SARASSIGN; }
">>>="              { return SHRASSIGN; }
"&="                { return BITANDASSIGN; }
"^="                { return BITXORASSIGN; }
"|="                { return BITORASSIGN; }
"&&="               { return LOGICALANDASSIGN; }
"||="               { return LOGICALORASSIGN; }
"??="               { return NULLISHASSIGN; }
"=="                { return EQ; }
"==="               { return EQSTRICT; }
"!="                { return NOTEQ; }
"!=="               { return NOTEQSTRICT; }
"<"                 { return LESSTHAN; }
">"                 { return GREATERTHAN; }
"<="                { return LESSTHANEQ; }
">="                { return GREATERTHANEQ; }
"."                 { return PERIOD; }
"..."               { return ELLIPSIS; }
","                 { return COMMA; }
";"                 { return SEMICOLON; }
"=>"                { return ARROW; }
"("                 { return LEFTPAREN; }
")"                 { return RIGHTPAREN; }
"{"                 { return LEFTBRACKET; }
"}"                 { return RIGHTBRACKET; }
"["                 { return LEFTBRACE; }
"]"                 { return RIGHTBRACE; }
"?."                { return QUESTIONPERIOD; }
"$"                 { return DOLLAR; }
"`"                 { return TEMPLATE_LITERAL; }

\"(\\.|[^\"])*\"    { yylval.strval = strdup(yytext); return DOUBLEQUOTEDSTRING; }
\'(\\.|[^\'])*\'    { yylval.strval = strdup(yytext); return SINGLEQUOTEDSTRING; }

[ \t\n]+            { /* Ignore whitespace */ }

[a-zA-Z]+           { yylval.strval = strdup(yytext); return IDENTIFIER; }
[0-9]+              { yylval.intval = atoi(yytext); return NUMBERLITERAL; }

.                   { printf("ILLEGAL: %s\n", yytext); }

%%


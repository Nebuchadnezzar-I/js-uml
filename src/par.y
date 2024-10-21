%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void yyerror(const char *s);
int yylex();
%}

%union {
    char *strval;
    int intval;
}

%token <strval> IDENTIFIER DOUBLEQUOTEDSTRING SINGLEQUOTEDSTRING
%token <intval> NUMBERLITERAL

%token AWAIT BREAK CASE CATCH CLASS CONST CONTINUE DEBUGGER DEFAULT DELETE DO ELSE ENUM EXPORT EXTENDS
%token TRUE FALSE FINALLY FOR FUNCTION IF IMPORT IN INSTANCEOF LET NEW NULL_TOK RETURN SUPER SWITCH
%token THIS THROW TRY TYPEOF VAR VOID WHILE WITH YIELD GET SET STATIC ACCESSOR FROM OF AS CONSOLE PROMISE
%token NULLISH OR AND NOT CONDITIONAL COLON ADD SUB MUL DIV MOD EXP INC DEC
%token BITOR BITXOR BITAND BITNOT SHL SHR SAR ASSIGN ADDASSIGN SUBASSIGN MULASSIGN DIVASSIGN MODASSIGN
%token EXPASSIGN SHLASSIGN SARASSIGN SHRASSIGN BITANDASSIGN BITXORASSIGN BITORASSIGN LOGICALANDASSIGN LOGICALORASSIGN NULLISHASSIGN
%token EQ EQSTRICT NOTEQ NOTEQSTRICT LESSTHAN GREATERTHAN LESSTHANEQ GREATERTHANEQ PERIOD ELLIPSIS
%token COMMA SEMICOLON ARROW LEFTPAREN RIGHTPAREN LEFTBRACKET RIGHTBRACKET LEFTBRACE RIGHTBRACE QUESTIONPERIOD DOLLAR
%token TEMPLATE_LITERAL

%type <strval> value

%%

program:
    statement_list
    ;

statement_list:
    statement_list statement
    | statement
    ;

statement:
    declaration
    ;

declaration:
    LET IDENTIFIER ASSIGN value SEMICOLON { printf("Let declaration: %s = %s\n", $2, $4); }
    | CONST IDENTIFIER ASSIGN value SEMICOLON { printf("Const declaration: %s = %s\n", $2, $4); }
    ;

value:
    NUMBERLITERAL { $$ = malloc(20); sprintf($$, "%d", $1); printf("Number: %d\n", $1); }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(int argc, char **argv) {
    yyparse();
    return 0;
}


%{
#include <stdio.h>
%}

%%

"await"             { printf("Await\n"); }
"break"             { printf("Break\n"); }
"case"              { printf("Case\n"); }
"catch"             { printf("Catch\n"); }
"class"             { printf("Class\n"); }
"const"             { printf("Const\n"); }
"continue"          { printf("Continue\n"); }
"debugger"          { printf("Debugger\n"); }
"default"           { printf("Default\n"); }
"delete"            { printf("Delete\n"); }
"do"                { printf("Do\n"); }
"else"              { printf("Else\n"); }
"enum"              { printf("Enum\n"); }
"export"            { printf("Export\n"); }
"extends"           { printf("Extends\n"); }
"true"              { printf("True\n"); }
"false"             { printf("False\n"); }
"finally"           { printf("Finally\n"); }
"for"               { printf("For\n"); }
"function"          { printf("Function\n"); }
"if"                { printf("If\n"); }
"import"            { printf("Import\n"); }
"in"                { printf("In\n"); }
"instanceof"        { printf("Instanceof\n"); }
"let"               { printf("Let\n"); }
"new"               { printf("New\n"); }
"null"              { printf("Null\n"); }
"return"            { printf("Return\n"); }
"super"             { printf("Super\n"); }
"switch"            { printf("Switch\n"); }
"this"              { printf("This\n"); }
"throw"             { printf("Throw\n"); }
"try"               { printf("Try\n"); }
"typeof"            { printf("Typeof\n"); }
"var"               { printf("Var\n"); }
"void"              { printf("Void\n"); }
"while"             { printf("While\n"); }
"with"              { printf("With\n"); }
"yield"             { printf("Yield\n"); }
"get"               { printf("Get\n"); }
"set"               { printf("Set\n"); }
"static"            { printf("Static\n"); }
"accessor"          { printf("Accessor\n"); }
"from"              { printf("From\n"); }
"of"                { printf("Of\n"); }
"as"                { printf("As\n"); }
"console"           { printf("Console\n"); }
"promise"           { printf("Promise\n"); }
"Promise"           { printf("Promise\n"); }

"??"                { printf("Nullish\n"); }
"||"                { printf("Or\n"); }
"&&"                { printf("And\n"); }
"!"                 { printf("Not\n"); }
"?"                 { printf("Conditional\n"); }
":"                 { printf("Colon\n"); }
"+"                 { printf("Add\n"); }
"-"                 { printf("Sub\n"); }
"*"                 { printf("Mul\n"); }
"/"                 { printf("Div\n"); }
"%"                 { printf("Mod\n"); }
"**"                { printf("Exp\n"); }
"++"                { printf("Inc\n"); }
"--"                { printf("Dec\n"); }
"|"                 { printf("BitOr\n"); }
"^"                 { printf("BitXor\n"); }
"&"                 { printf("BitAnd\n"); }
"~"                 { printf("BitNot\n"); }
"<<"                { printf("Shl\n"); }
">>"                { printf("Shr\n"); }
">>>"               { printf("Sar\n"); }
"="                 { printf("Assign\n"); }
"+="                { printf("AddAssign\n"); }
"-="                { printf("SubAssign\n"); }
"*="                { printf("MulAssign\n"); }
"/="                { printf("DivAssign\n"); }
"%="                { printf("ModAssign\n"); }
"**="               { printf("ExpAssign\n"); }
"<<="               { printf("ShlAssign\n"); }
">>="               { printf("SarAssign\n"); }
">>>="              { printf("ShrAssign\n"); }
"&="                { printf("BitAndAssign\n"); }
"^="                { printf("BitXorAssign\n"); }
"|="                { printf("BitOrAssign\n"); }
"&&="               { printf("LogicalAndAssign\n"); }
"||="               { printf("LogicalOrAssign\n"); }
"??="               { printf("NullishAssign\n"); }
"=="                { printf("Eq\n"); }
"==="               { printf("EqStrict\n"); }
"!="                { printf("NotEq\n"); }
"!=="               { printf("NotEqStrict\n"); }
"<"                 { printf("LessThan\n"); }
">"                 { printf("GreaterThan\n"); }
"<="                { printf("LessThanEq\n"); }
">="                { printf("GreaterThanEq\n"); }
"."                 { printf("Period\n"); }
"..."               { printf("Ellipsis\n"); }
","                 { printf("Comma\n"); }
";"                 { printf("Semicolon\n"); }
"=>"                { printf("Arrow\n"); }
"("                 { printf("LeftParen\n"); }
")"                 { printf("RightParen\n"); }
"{"                 { printf("LeftBracket\n"); }
"}"                 { printf("RightBracket\n"); }
"["                 { printf("LeftBrace\n"); }
"]"                 { printf("RightBrace\n"); }
"?."                { printf("QuestionPeriod\n"); }
"$"                 { printf("Dollar\n"); }
"`"                 { printf("TemplateLiteral\n"); }

\"(\\.|[^\"])*\"    { printf("DoubleQuotedString: %s\n", yytext); }
\'(\\.|[^\'])*\'    { printf("SingleQuotedString: %s\n", yytext); }

[ \t\n]+            { /* WHITESPACE */ }
[a-zA-Z]+           { printf("Identifier: %s\n", yytext); }
[0-9]+              { printf("NumberLiteral\n"); }

.                   { printf("ILLEGAL\n"); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}


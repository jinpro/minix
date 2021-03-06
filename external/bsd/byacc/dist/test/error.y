/*	$NetBSD: error.y,v 1.1.1.5 2013/04/06 14:45:27 christos Exp $	*/

%{
int yylex(void);
static void yyerror(const char *);
%}
%%
S: error
%%

#include <stdio.h>

int
main(void)
{
    printf("yyparse() = %d\n", yyparse());
    return 0;
}

int
yylex(void)
{
    return -1;
}

static void
yyerror(const char* s)
{
    printf("%s\n", s);
}

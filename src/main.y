%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *c);
int yylex(void);
int count = 0;
%}

%token ABRE FECHA PALAVRA INT VIRGULA EOL

%%

PROGRAMA: 
	PROGRAMA LISTA EOL {printf("OK\n");}
	|
	
EXPRESSAO:
	PALAVRA
	|
	INT
	|
	ABRE EXPRESSAO FECHA
	|
	EXPRESSAO VIRGULA EXPRESSAO

LISTA:
	ABRE EXPRESSAO FECHA
	|
	ABRE FECHA	




%%


void yyerror(char *s) {
	printf("ERRO\n");
}
int main() {
  yyparse(); 

    return 0;
}



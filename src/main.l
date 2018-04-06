%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%
[0-9]+	{
	return INT;
}


["]*[A-Za-z]+["]*	{
	return PALAVRA;
}

\n	{
	return EOL;
}

[[]	{
	return ABRE;
}

[]]	{
	return FECHA;
}

[,]	{
	return VIRGULA;
}

. ;

%%

int yywrap() {
  return 1;
}





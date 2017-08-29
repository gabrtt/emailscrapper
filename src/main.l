
%{
#include <stdio.h>
%}

CHRESP [\.\-_]
NUMLET [a-zA-Z0-9]
%%

({NUMLET}+({CHRESP}{NUMLET}+)*@{NUMLET}+([.]({NUMLET})+)*) {
    
    printf("%s\n",yytext);

}

({NUMLET}+({CHRESP}{NUMLET}+)*{NUMLET}+@{NUMLET}+{CHRESP}) ;

. ; 

\n ;


%%

int main() {
  yylex();
  return 0;
}

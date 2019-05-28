%{
#include<stdio.h>
int c =0;
%}
%%
"/*".+"*/"|"//".+"\n" {c++;printf(" ");}
%%
void main()
{
yyin = fopen("input.c","r");
printf("The program without comments:\n");
yylex();
printf("The number of comment lines : %d\n",c);
}

%{
#include <stdio.h>

int x = 7;
int y = 2;
int i = 1;

int yylex(void);
void yyerror(const char *s) {}
%}

%token JODI NAHOLE KAM_SHURU KAM_SESH
%token X7 ADD4 ADD5 GUN BARO

%%
program:
    statements
;

statements:
    statements statement
    | statement
;

statement:
      JODI X7 {
            printf("Condition milse: x ar man 7\n");
        }

    | KAM_SHURU {
            printf("Kam shuru hoise\n");
        }

    | ADD4 {
            x += 4;
            printf("x er man e 4 jog hoilo → x = %d\n", x);
        }

    | ADD5 {
            y += 5;
            printf("y er man e 5 jog hoilo → y = %d\n", y);
        }

    | GUN {
            x = x * y;
            printf("x ar y eksathe gun hoilo → x = %d\n", x);
        }

    | BARO {
            i++;
            printf("i er man ek dhap barse → i = %d\n", i);
        }

    | KAM_SESH {
            printf("Kam sesh hoise\n");
        }
;
%%

int main() {
    printf("Dhaka Local Language Compiler choltesey 🚀\n\n");
    yyparse();
    return 0;
}

%{
#include "parser.tab.h"
%}

%%
"jodi-mila"          { return JODI; }
"nahole"             { return NAHOLE; }

"kam shuru koro"     { return KAM_SHURU; }
"kam sesh koro"      { return KAM_SESH; }

"x ar 7"             { return X7; }
"4 jogao"            { return ADD4; }
"5 jogao"            { return ADD5; }

"gunao"              { return GUN; }
"ek dhap baro"       { return BARO; }

[\r\n]+              ;
[ \t]+               ;
.                    ;
%%

int yywrap(void) {
    return 1;
}

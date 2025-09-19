%{
#include <stdio.h>
int num_hexadecimales = 0;
int num_binarios = 0;
int num_aleatorios = 0;
%}

%%
0x[0-9a-fA-F]+    { num_hexadecimales++; printf("Hexadecimal: %s\n", yytext); }
0b[01]+           { num_binarios++; printf("Binario: %s\n", yytext); }
[ \t\r\n]+        { /* Ignorar espacios, tabs y saltos de línea */ }
.+                { num_aleatorios++; printf("Aleatorio: %s\n", yytext); }
%%

int main(int argc, char **argv) {
    ++argv, --argc;

    if (argc > 0) {
        yyin = fopen(argv[0], "r");
        if (!yyin) {
            fprintf(stderr, "Error: No se pudo abrir el archivo %s\n", argv[0]);
            return 1;
        }
    } else {
        yyin = stdin;
        printf("Leyendo desde entrada estándar...\n");
    }
    
    yylex();
    
    printf("\nResumen final:\n");
    printf("Números hexadecimales encontrados: %d\n", num_hexadecimales);
    printf("Números binarios encontrados: %d\n", num_binarios);
    printf("Cadenas aleatorias encontradas: %d\n", num_aleatorios);
    
    if (yyin != stdin) fclose(yyin);
    return 0;
}

int yywrap() {
    return 1;
}

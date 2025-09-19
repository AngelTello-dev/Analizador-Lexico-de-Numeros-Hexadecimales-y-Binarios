# Analizador-Lexico-de-Numeros-Hexadecimales-y-Binarios

Este es un proyecto sencillo que utiliza **Flex** (Fast Lexical Analyzer Generator) para identificar y clasificar cadenas de texto en un archivo de entrada. El analizador está diseñado para reconocer específicamente números en formato hexadecimal, binario y cualquier otra cadena de caracteres.

## Descripción

El programa lee un archivo de texto y utiliza un conjunto de reglas de expresiones regulares para:
-   Identificar números hexadecimales (que comienzan con `0x`).
-   Identificar números binarios (que comienzan con `0b`).
-   Clasificar cualquier otra cadena como "aleatoria".

Al finalizar el análisis, el programa muestra un resumen con la cantidad total de números hexadecimales, binarios y cadenas aleatorias encontradas.

## Archivos del Proyecto

-   `numExaBin.l`: El archivo fuente de Flex que contiene las definiciones y reglas para el análisis léxico.
-   `fuente_num.txt`: Un archivo de ejemplo con datos de prueba para verificar el funcionamiento del analizador.

## Requisitos

Para compilar y ejecutar este proyecto, necesitarás:
-   **Flex**: El generador de analizadores léxicos.
-   Un **compilador de C** (como `gcc`).

## Cómo Compilar y Ejecutar

1.  **Abre una terminal** en la carpeta del proyecto.

2.  **Genera el analizador en C** usando Flex:
    ```bash
    flex numExaBin.l
    ```
    Este comando creará un archivo llamado `lex.yy.c`.

3.  **Compila el archivo C** generado:
    ```bash
    gcc lex.yy.c -o analizador
    ```
    Esto creará un programa ejecutable llamado `analizador`.

4.  **Ejecuta el programa** con el archivo de entrada:
    ```bash
    ./analizador fuente_num.txt
    ```
5.  **Otra formar de ejecutar el programa** existe un archivo llamado Makefile
      Aqui solamente escribe lo siguiente en la terminal de linux.
    ```bash
    make
    ```

    

# Variable para el nombre del archivo Flex
A_FLEX = numExaBin.l
SALIDA = a.out
FUENTE = fuente_num.txt

# Regla principal compilar y ejecutar
all: clean compile run

# Limpiar archivos generados
clean:
	rm -f lex.yy.c $(SALIDA)

# Regla para compilar el archivo de Flex
compile:
	flex $(A_FLEX)
	cc lex.yy.c -lfl

# Regla para ejecutar el programa con el archivo fuente
run:
	./$(SALIDA) $(FUENTE)



	



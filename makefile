CC = gcc
CFLAGS = -O2 -std=c11 -Wall -Wextra -pedantic -march=native
TARGET = experimento
DATA = results.dat
SCRIPT = plot.gp
GRAPH = graph.png

all: $(GRAPH)

$(GRAPH): $(DATA) $(SCRIPT)
	gnuplot $(SCRIPT)
	@echo "Gráfico generado: $(GRAPH)"

$(DATA): $(TARGET)
	./$(TARGET) > $(DATA)

$(TARGET): experimento.c
	$(CC) $(CFLAGS) experimento.c -o $(TARGET)

clean:
	rm -f $(TARGET) $(DATA) $(GRAPH)

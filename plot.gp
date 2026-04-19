set terminal pngcairo size 800,600
set output 'grafico_ordenamiento.png'

set title "Análisis Empírico: Insertion Sort vs Merge Sort"
set xlabel "Tamaño de entrada (n)"
set ylabel "Tiempo (microsegundos)"
set key top left
set grid

plot "results.dat" using 1:2 with linespoints title "iSort", \
     "results.dat" using 1:3 with linespoints title "mSort"

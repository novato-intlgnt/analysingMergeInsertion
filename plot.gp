set terminal pngcairo size 800,600
set output './proofs/graph.png'

set title "Análisis Empírico: Insertion Sort vs Merge Sort"
set xlabel "Tamaño de entrada (n)"
set ylabel "Tiempo (microsegundos)"
set key top left
set grid

plot "results.dat" using 1:2 with linespoints title "iSort", \
     "results.dat" using 1:4 with linespoints title "mSort"

set output

set terminal pngcairo size 1024,768 font "Arial,12"
set output './proofs/graphErr.png'

set title "Análisis Empírico: Insertion Sort vs Merge Sort"
set xlabel "Tamaño de entrada (n)"
set ylabel "Tiempo (microsegundos)"
set key top left
set grid

plot "results.dat" using 1:2:3 with yerrorlines title "iSort (Promedio ± σ)", \
     "results.dat" using 1:4:5 with yerrorlines title "mSort (Promedio ± σ)"

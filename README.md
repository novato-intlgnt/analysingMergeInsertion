## 1 Introducción

Esta actividad se plantea como una experiencia de investigación formativa, cuyo propósito es que el estudiante desarrolle la capacidad de diseñar y analizar experimentos computacionales reales

En el análisis teórico de algoritmos se sabe que:

- Insertion Sort presenta crecimiento cuadrático en el peor caso
- Merge Sort presenta crecimiento logarítmico

Sin embargo, en la práctica, estos resultados no siempre se reflejan de forma directa En particular, en el material del MIT, se sugiere que para valores pequeños de $n$, Insertion Sort puede ser más rápido que Merge Sort, existiendo un posible punto de cruce cercano a $n_{0}\approx30$

Problema de investigación:
Determinar empíricamente el valor $n_{0}$ a partir del cual Merge Sort supera consistentemente a Insertion Sort, y analizar los factores que afectan dicho resultado

Habilidades a desarrollar: Diseño experimental; Análisis estadístico; Visualización; Pensamiento crítico, y Uso de IA generativa como herramienta de apoyo y de autoaprendizaje

---

## 2 Metodología Experimental

Se presenta el archivo `experimento.c` en el se puso el codigo dado y posteriormente fue analizado y modificado minimamente
El gráfico obtenido inicialmente muestra resultados inesperados (Merge Sort siendo más lento consistentemente), lo cual indica fallas en el diseño experimental

---

## Problemas propuestos

- [ ] **1. Detecte problemas en el experimento actual.**
  - Se pasa el mismo array a ambos algoritmos, afecta la comparabilidad
  - En merge sort se reserva memoria dinamica, 2 veces por llamada recursiva.
- [ ] **2. Corrija la comparabilidad entre algoritmos.**
  - Efectivamente para n valores pequeños, insertion sort parece ser más rapido
- [ ] **3. Amplíe el diseño de entradas.**
  - Se uso la funcion `memcpy()` para copiar eficientemente el array orginal
  - Se implemento constantes simbolicas, para modificar facilmente los parametros del experimento
- [ ] **4. Refine la escala experimental.**
- [ ] **5. Repita mediciones.**
- [ ] **6. Aplique alguna estrategia estadística.**
- [ ] **7. Rediseñe el experimento de forma modular.**
- [ ] **8. Mejore el formato de los datos.**
- [ ] **9. Obtenga mejores visualizaciones.**
- [ ] **10.Interprete críticamente los resultados.**

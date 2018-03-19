void dibujar_lineas(int[]X, int[]Y, int lineas[][]) {
  strokeWeight(5);//dibuja lineas guias
  stroke(255, 0, 0, 1);
  for (int filas =0; filas<X.length; filas++) {
    for (int columnas=0; columnas<X.length; columnas++) {
      if (lineas[filas][columnas]==1) {
        line(X[filas], Y[filas], X[columnas], Y[columnas]);
      }
    }
  }
}
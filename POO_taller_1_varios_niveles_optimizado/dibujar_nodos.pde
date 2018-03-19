void dibujar_nodos(int []X, int[]Y) {
  fill(0, 0, 255);
  for (int i=0; i<X.length; i++) {
    ellipse(X[i], Y[i], 30, 30);
  }
}
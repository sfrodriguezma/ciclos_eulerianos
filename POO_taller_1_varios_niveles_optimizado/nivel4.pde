void nivel4() {
  dibujar_lineas(X4, Y4, lineas4);
  dibujar_nodos(X4, Y4);
  encontrar_numero_de_lineas(lineas4);
  ganar_perder_nivel((encontrar_numero_de_lineas(lineas4)/2), usuario4);
}
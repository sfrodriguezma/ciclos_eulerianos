void nivel3() {
  dibujar_lineas(X3, Y3, lineas3);
  dibujar_nodos(X3, Y3);
  encontrar_numero_de_lineas(lineas3);
  ganar_perder_nivel((encontrar_numero_de_lineas(lineas3)/2), usuario3);
}
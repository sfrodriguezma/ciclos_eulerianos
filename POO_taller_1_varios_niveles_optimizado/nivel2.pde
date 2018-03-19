void nivel2() {
  dibujar_lineas(X2, Y2, lineas2);
  dibujar_nodos(X2, Y2);
  encontrar_numero_de_lineas(lineas2);
  ganar_perder_nivel((encontrar_numero_de_lineas(lineas2)/2), usuario2);
}
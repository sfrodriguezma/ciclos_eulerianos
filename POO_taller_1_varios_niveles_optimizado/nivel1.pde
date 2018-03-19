void nivel1() {
  dibujar_lineas(X, Y, lineas);
  dibujar_nodos(X, Y);
  encontrar_numero_de_lineas(lineas);
  ganar_perder_nivel((encontrar_numero_de_lineas(lineas)/2), usuario);
}
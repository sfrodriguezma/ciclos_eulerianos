int encontrar_numero_de_lineas(int [][]lineas) {
  int nlineas=0;
  for (int limpiar_filas=0; limpiar_filas<lineas.length; limpiar_filas++) { 
    for (int limpiar_columnas=0; limpiar_columnas<lineas.length; limpiar_columnas++) {
      if (lineas[limpiar_filas][limpiar_columnas]==1) {
        nlineas=nlineas+1;
      }
    }
  }
  // println(nlineas);
  return nlineas;
}
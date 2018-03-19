void limpiar(int[][]usuario) {
  for (int limpiar_filas=0; limpiar_filas<usuario.length; limpiar_filas++) {//limpíar matriz  usuario1
    for (int limpiar_columnas=0; limpiar_columnas<usuario.length; limpiar_columnas++) {
      usuario[limpiar_filas][limpiar_columnas]=0;
    }
  }
}
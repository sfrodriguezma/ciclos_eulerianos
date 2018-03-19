void reiniciar(int[][]usuario) {
  if (keyPressed==true&&key=='r') {//reiniciar nivel 2
    background(0);
    posiciones_dibujar=0;
    contador=0;
    perdio=0;
    limpiar(usuario);
  }
}
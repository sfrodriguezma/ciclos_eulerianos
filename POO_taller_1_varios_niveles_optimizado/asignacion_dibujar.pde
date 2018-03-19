void asignacion_dibujar(int []X, int[]Y, int[][]lineas, int [][]usuario) {
  if (posiciones_dibujar==0) {
    for (nodo1=0; nodo1<X.length; nodo1++) {
      if ((mouseX>=(X[nodo1]-15))&&(mouseX<=(X[nodo1]+15))&&(mouseY>=(Y[nodo1]-15))&&(mouseY<=(Y[nodo1]+15))) {
        dibujar[0]=X[nodo1];
        dibujar[1]=Y[nodo1];
        nodo2=nodo1;
        posiciones_dibujar++;
      }
    }
  }
  //println(dibujar[0]);
  //println(dibujar[1]);
  else {
    stroke(0, 255, 0);
    for (nodo1=0; nodo1<X.length; nodo1++) {
      if ((mouseX>=(X[nodo1]-15))&&(mouseX<=(X[nodo1]+15))&&(mouseY>=(Y[nodo1]-15))&&(mouseY<=(Y[nodo1]+15))) {
        dibujar[2]=X[nodo1];
        dibujar[3]=Y[nodo1];
        if (lineas[nodo2][nodo1]==1) {
          if (usuario[nodo2][nodo1]==1) {//perdio
            perdio=1;
          } else {
            line(dibujar[0], dibujar[1], dibujar[2], dibujar[3]);
            dibujar[0]=dibujar[2];
            dibujar[1]=dibujar[3];
            usuario[nodo2][nodo1]=1;
            usuario[nodo1][nodo2]=1;
            nodo2=nodo1;
            contador++;
            println(contador);
          }
        }
      }
    }
  }
}
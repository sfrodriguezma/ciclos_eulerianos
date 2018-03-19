void ganar_perder_nivel(int nlineas, int[][] usuario) {
  if (contador==nlineas) {
    background(0);
    delay(200); 
    println("gano");
    fill(255);
    textSize(27);//tamaño del texto
    textAlign(CENTER, CENTER);//centralizar texto
    text("crack,ha superado el nivel", 250, 230);//se coloco texto
    text("para ver el siguiente nivel presione s", 250, 250);

    if (keyPressed==true&&key=='s') {//reiniciar
      if (nivel<=3) {
        background(0);
        posiciones_dibujar=0;
        contador=0;
        perdio= 0;
        nivel++;
        limpiar(usuario);
      } else {
        background(0);



        posiciones_dibujar=0;
        contador=0;
        perdio= 0;
        nivel=1;
      }
    }
  }



  if (perdio==1) {
    background(0);
    delay(200);
    fill(255);
    println("perdio");
    textSize(29);//tamaño del texto
    textAlign(CENTER, CENTER);//centralizar texto
    text("llorelo papa,ha perdido", 250, 230);//se coloco texto
    text(" para volver a intentarlo presione r", 250, 250);
    limpiar(usuario);
  }
}
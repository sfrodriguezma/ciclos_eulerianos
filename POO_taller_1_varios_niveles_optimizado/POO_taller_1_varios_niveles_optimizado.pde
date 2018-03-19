int [] dibujar=new int[4];
int [][]usuario=new int[11][11];
int [][]usuario2=new int[10][10];
int [][]usuario3=new int[6][6];
int [][]usuario4=new int[10][10];
int [] X  ={20, 250, 480, 100, 100, 400, 400, 300, 200, 200, 300};
int [] Y = {100, 10, 100, 100, 450, 100, 450, 450, 450, 350, 350};
int[][]lineas={
  {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0}, 
  {1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1}, 
  {0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0}
}; 
int [] X2={20, 250, 480, 20, 250, 480, 250, 250, 115, 385};
int [] Y2={20, 20, 20, 480, 480, 480, 380, 120, 235, 235};
int [][] lineas2={
  {0, 1, 0, 1, 0, 0, 0, 0, 0, 0}, 
  {1, 0, 1, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 1, 0, 0, 0, 1, 0, 0, 0, 0}, 
  {1, 0, 0, 0, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 1, 0, 1, 1, 0, 0, 0}, 
  {0, 0, 1, 0, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 1, 0, 0, 1, 1, 1}, 
  {0, 1, 0, 0, 0, 0, 1, 0, 1, 1}, 
  {0, 0, 0, 0, 0, 0, 1, 1, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 1, 1, 0, 0}
};


int [] X3={250, 30, 150, 350, 470, 250};
int [] Y3={485, 167, 15, 15, 167, 250};
int [][] lineas3={
  {0, 1, 0, 0, 1, 0}, 
  {1, 0, 1, 1, 0, 1}, 
  {0, 1, 0, 1, 1, 1}, 
  {0, 1, 1, 0, 1, 1}, 
  {1, 0, 1, 1, 0, 1}, 
  {0, 1, 1, 1, 1, 0}, 
};
int [] X4={150, 350, 485, 250, 15, 180, 320, 370, 250, 130};
int [] Y4={485, 485, 200, 15, 200, 200, 200, 310, 400, 310};
int [][] lineas4={
  {0, 1, 0, 0, 1, 0, 0, 0, 1, 1}, 
  {1, 0, 1, 0, 0, 0, 0, 1, 1, 0}, 
  {0, 1, 0, 1, 0, 0, 1, 1, 0, 0}, 
  {0, 0, 1, 0, 1, 1, 1, 0, 0, 0}, 
  {1, 0, 0, 1, 0, 1, 0, 0, 0, 1}, 
  {0, 0, 0, 1, 1, 0, 1, 0, 0, 1}, 
  {0, 0, 1, 1, 0, 1, 0, 1, 0, 0}, 
  {0, 1, 1, 0, 0, 0, 1, 0, 1, 0}, 
  {1, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {1, 0, 0, 0, 1, 1, 0, 0, 1, 0}, 
};



int posiciones_dibujar=0, nodo1, nodo2, contador=0, limpiar_filas, limpiar_columnas, menu=0, nivel=1, perdio=0; 


void setup() {
  size(500, 500);
  background(0);
}










void draw() {
  if ( menu==0) {//pantalla de inicio
    fill(255, 0, 0);
    textSize(22);//tamaño del texto
    textAlign(CENTER, CENTER);//centralizar texto
    text("bienvenido", 250, 230);//se coloco texto
    text(" para comenzar presione i", 250, 250);
    text("si en algun momento desea reiniciar presione r", 250, 290);
    if (keyPressed==true&&key=='i') {
      menu++;
      background(0);
    }
  } else {
    if (nivel==1) {

      nivel1();
      reiniciar(usuario);
    }//nivel 1
    if (nivel==2) {

      nivel2();
      reiniciar(usuario2);
    }

    if (nivel==3) {

      nivel3();
      reiniciar(usuario3);
    }
    if (nivel==4) {

      nivel4();
      reiniciar(usuario4);
    }
  }
}

void mouseClicked() {
  if (nivel==1) {
    asignacion_dibujar(X, Y, lineas, usuario);
  }
  if (nivel==2) {
    asignacion_dibujar(X2, Y2, lineas2, usuario2);
  }
  if (nivel==3) {
    asignacion_dibujar(X3, Y3, lineas3, usuario3);
  }
  if (nivel==4) {
    asignacion_dibujar(X4, Y4, lineas4, usuario4);
  }
}
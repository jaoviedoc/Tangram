//Resolucion de pantalla recomendada 1366 x 768

int reset;
int CoordenadaX[];
int CoordenadaY[];
int Rotacion[];
color MatrizColor[];
int i;
float tre=1;
int puntaje=0;
int nivel=0;
int n=1;
int m=1;
int Contador=0;

void setup()
{
  fullScreen();
  
  CoordenadaX = new int [7];
  CoordenadaY = new int [7];
  Rotacion = new int [7];
  MatrizColor = new int [7];

  Preestablecer();
}

void draw()
{
  scale(4);
  ContornoFigura();
  scale(0.250);
  
  TextoJuego();
  DibujarFiguras();
  MoverFiguras();

  loadPixels();
  contar();
}

void TextoJuego()
{
  fill(250);
    textSize(40);
    textAlign(CENTER,TOP);
      text("Nivel:", (width/2)-60, 0);
      text(nivel, (width/2)+50, 0);
    TextoSalida();
}

void Preestablecer()
{
  for (i=0;i<7;i++)
  {
    if(i==0)
    {
      CoordenadaX[i]=300;
      CoordenadaY[i]=100;
      Rotacion[i]=i;
      MatrizColor[i]=color(255,0,0);
    }
    else if (i==1)
    {
      CoordenadaX[i]=200;
      CoordenadaY[i]=400;
      Rotacion[i]=i;
      MatrizColor[i]=color(255,255,0);
    }
    else if (i==2)
    {
      CoordenadaX[i]=350;
      CoordenadaY[i]=600;
      Rotacion[i]=i;
      MatrizColor[i]=color(0,255,0);
    }
    else if (i==3)
    {
      CoordenadaX[i]=1040;
      CoordenadaY[i]=150;
      Rotacion[i]=i;
      MatrizColor[i]=color(0,0,255);
    }
    else if (i==4)
    {
      CoordenadaX[i]=1050;
      CoordenadaY[i]=450;
      Rotacion[i]=i;
      MatrizColor[i]=color(255,0,255);
    }
    else if (i==5)
    {
      CoordenadaX[i]=1250;
      CoordenadaY[i]=250;
      Rotacion[i]=i;
      MatrizColor[i]=color(255,128,0);
    }
    else if (i==6)
    {
      CoordenadaX[i]=1200;
      CoordenadaY[i]=600;
      Rotacion[i]=i;
      MatrizColor[i]=color(204,0,102);
    }
  }
  reset = -1;
}

void ContornoFigura()
{
  background(145,148,255);
  fill(255);

    if (nivel==1)
    {
      rect(((width/2)-230)/4,((height/2)-180)/4,92,92);
    }
    else if (nivel==2)
    {
       beginShape();
        vertex(100+10,10+10);
        vertex(100+32.6274,32.6274+10);
        vertex(100+55.2548,10+10);
        vertex(100+55.2548,55.2548+10);
        vertex(100+100.5097,100.5097+10);
        vertex(100+100.5097,164.5097+10);
        vertex(100+132.5097,132.5097+10);
        vertex(100+164.5097,132.5097+10);
        vertex(100+132.5097,164.5097+10);
        vertex(100+36.5097,164.5097+10);
        vertex(100+55.2548,145.7645+10);
        vertex(100+55.2548,119.2548+10);
        vertex(100+23.2548,87.2548+10);
        vertex(100+32.6274,77.8823+10);
        vertex(100+10,55.2548+10);
      endShape(CLOSE);
    }
    else if (nivel==3)
    {
      beginShape();
        vertex(262.5151-20,41.2885);
        vertex(239.8877-20,63.916);
        vertex(239.8877-20,109.1708);
        vertex(217.2603-20,131.7982);
        vertex(217.2603-20,177.053);
        vertex(172.0055-20,131.7982);
        vertex(130.6329-20,173.1708);
        vertex(130.6329-20,109.1708);
        vertex(162.6329-20,77.1708);
        vertex(172.0055-20,86.5434);
        vertex(194.6329-20,63.916);
        vertex(217.2603-20,86.5434);
        vertex(217.2603-20,41.2885);
      endShape(CLOSE);
    }
    else if(nivel==4)
    {
      beginShape();
        vertex(120.5302,28.6317);
        vertex(143.1577,51.2591);
        vertex(143.1577,96.5139);
        vertex(129.9028,109.7688);
        vertex(220.4125,109.7688);
        vertex(175.1577,155.0236);
        vertex(193.9028,173.7688);
        vertex(129.9028,173.7688);
        vertex(97.9028,141.7688);
        vertex(97.9028,96.5139);
        vertex(120.5302,73.8865);
        vertex(120.5302,60.6317);
        vertex(88.5302,60.6317);
      endShape(CLOSE);
    }
    else if (nivel==5)
    {
      beginShape();
        vertex(50+125.7029,42.6731+20);
        vertex(50+170.9578,87.9279+20);
        vertex(50+154.9578,87.9279+20);
        vertex(50+154.9578,133.1827+20);
        vertex(50+64.4481,133.1827+20);
        vertex(50+64.4481,87.9279+20);
        vertex(50+48.4481,87.9279+20);
        vertex(50+80.4481,55.9279+20);
        vertex(50+80.4481,23.9279+20);
        vertex(50+112.4481,23.9279+20);
        vertex(50+112.4481,55.9279+20);
      endShape(CLOSE);
    }
    else if (nivel==6)
    {
      beginShape();
        vertex(20+158.6013,12.6563+10);
        vertex(20+158.6013,89.9111+10);
        vertex(20+203.8562,135.166+10);
        vertex(20+178.4836,135.166+10);
        vertex(20+155.8562,157.7934+10);
        vertex(20+110.6013,157.7934+10);
        vertex(20+87.9739,135.166+10);
        vertex(20+62.6013,135.166+10);
        vertex(20+126.6013,71.166+10);
        vertex(20+113.3465,57.9111+10);
      endShape(CLOSE);
    }
    else if (nivel==7)
    {
      beginShape();
        vertex(60+59.5405,20.4679+30);
        vertex(60+155.5405,20.4679+30);
        vertex(60+155.5405,116.4679+30);
        vertex(60+65.0308,116.4679+30);
        vertex(60+110.2857,71.2131+30);
        vertex(60+123.5405,84.4679+30);
        vertex(60+123.5405,52.4679+30);
        vertex(60+91.5405,52.4679+30);
        vertex(60+104.7953,65.7227+30);
        vertex(60+59.5405,110.9776+30);
      endShape(CLOSE);
    }
     else if (nivel==8)
    {
      beginShape();
        vertex(50+49.1327,122.5022+25);
        vertex(50+49.1327,31.9926+25);
        vertex(50+62.3875,45.2474+25);
        vertex(50+158.3875,45.2474+25);
        vertex(50+171.6423,31.9926+25);
        vertex(50+171.6423,122.5022+25);
        vertex(50+158.3875,109.2474+25);
        vertex(50+62.3875,109.2474+25);
      endShape(CLOSE);
    }
     else if (nivel==9)
    {
      beginShape();
        vertex(60+58.0258,94.2084+40);
        vertex(60+148.5355,94.2084+40);
        vertex(60+135.2807,80.9535+40);
        vertex(60+167.2807,48.9535+40);
        vertex(60+167.2807,16.9535+40);
        vertex(60+39.2807,16.9535+40);
        vertex(60+39.2807,48.9535+40);
        vertex(60+71.2807,80.9535+40);
      endShape(CLOSE);
    }
     else if (nivel==10)
    {
      beginShape();
        vertex(15+101.7386,104.0304+30);
        vertex(15+101.7386,72.0304+30);
        vertex(15+133.7386,72.0304+30);
        vertex(15+133.7386,104.0304+30);
        vertex(15+165.7386,104.0304+30);
        vertex(15+165.7386,72.0304+30);
        vertex(15+197.7386,72.0304+30);
        vertex(15+197.7386,104.0304+30);
        vertex(15+261.7386,104.0304+30);
        vertex(15+197.7386,40.0304+30);
        vertex(15+101.7386,40.0304+30);
        vertex(15+37.7386,104.0304+30);
      endShape(CLOSE);
    }
     else if (nivel==11)
    {
      beginShape();
        vertex(25+55.8436,109.1509+25);
        vertex(25+146.3532,18.6412+25);
        vertex(25+236.8629,109.1509+25);
      endShape(CLOSE);
    }
     else if (nivel==12)
    {
      beginShape();
        vertex(30+92.9012,182.4283);
        vertex(30+183.4108,182.4283);
        vertex(30+160.7834,159.8009);
        vertex(30+160.7834,69.2912);
        vertex(30+183.4108,46.6638);
        vertex(30+154.156,46.6638);
        vertex(30+154.156,14.6638);
        vertex(30+122.156,14.6638);
        vertex(30+122.156,46.6638);
        vertex(30+92.9012,46.6638);
        vertex(30+115.5286,69.2912);
        vertex(30+115.5286,159.8009);
      endShape(CLOSE);
    }
     else if (nivel==13)
    {
      beginShape();
        vertex(30+68.4908,133.5522+15);
        vertex(30+204.2553,133.5522+15);
        vertex(30+159.0005,88.2974+15);
        vertex(30+204.2553,43.0425+15);
        vertex(30+68.4908,43.0425+15);
        vertex(30+113.7457,88.2974+15);
      endShape(CLOSE);
    }
     else if (nivel==14)
    {
      beginShape();
        vertex(10+155.2771,209.9857-30);
        vertex(10+219.2771,145.9857-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+200.5319,100.7309-30);
        vertex(10+155.2771,55.476-30);
        vertex(10+110.0222,100.7309-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+91.2771,145.9857-30);
      endShape(CLOSE);
    }
     else if (nivel==15)
    {
      beginShape();
        vertex(84.7538,103.9984+20);
        vertex(244.7538,103.9984+20);
        vertex(276.7538,71.9984+20);
        vertex(180.7538,71.9984+20);
        vertex(180.7538,39.9984+20);
        vertex(116.7538,39.9984+20);
        vertex(116.7538,71.9984+20);
        vertex(52.7538,71.9984+20);
      endShape(CLOSE);
    }
     else if (nivel==16)
    {
      beginShape();
        vertex(267.0484,112.1974+20);
        vertex(267.0484,48.1974+20);
        vertex(235.0484,80.1974+20);
        vertex(235.0484,48.1974+20);
        vertex(203.0484,80.1974+20);
        vertex(203.0484,48.1974+20);
        vertex(171.0484,80.1974+20);
        vertex(171.0484,48.1974+20);
        vertex(139.0484,80.1974+20);
        vertex(139.0484,48.1974+20);
        vertex(75.0484,112.1974+20);
      endShape(CLOSE);
    }
     else if (nivel==17)
    {
      beginShape();
        vertex(20+146.5156,171.7284-10);
        vertex(20+210.5156,107.7284-10);
        vertex(20+178.5156,75.7284-10);
        vertex(20+162.5156,75.7284-10);
        vertex(20+162.5156,43.7284-10);
        vertex(20+130.5156,43.7284-10);
        vertex(20+130.5156,75.7284-10);
        vertex(20+114.5156,75.7284-10);
        vertex(20+82.5156,107.7284-10);
      endShape(CLOSE);
    }
}

void DibujarFiguras()
{
  for(i=0;i<7;i++)
  {
    pushMatrix();
    translate(CoordenadaX[i],CoordenadaY[i]);
    rotate(Rotacion[i]*radians(45));
    fill(MatrizColor[i]);
    scale(4);

    switch(i)
    {
      case 0:
        beginShape(TRIANGLES);
        vertex(-48,-16);
        vertex(16,-16);
        vertex(16,48);
        endShape();
      break;
      
      case 1:
        beginShape(TRIANGLES);
        vertex(-48,-16);
        vertex(16,-16);
        vertex(16,48);
        endShape();
      break;
      
      case 2:
        beginShape(TRIANGLES);
        vertex(-24,-8);
        vertex(8,-8);
        vertex(8,24);
        endShape();
      break;
      
      case 3:
        beginShape(TRIANGLES);
        vertex(-24,-8);
        vertex(8,-8);
        vertex(8,24);
        endShape();
      break;
      
      case 4:
        beginShape(TRIANGLES);
        vertex(-16,0);
        vertex(16,32);
        vertex(16,-32);
        endShape();
      break;
      
      case 5:
        beginShape(QUADS);
        vertex(-16*tre,0);
        vertex(-16*tre,-32);
        vertex(16*tre,0);
        vertex(16*tre,32);      
        endShape();
      break;
      
      case 6:
        rect(-16,-16,32,32);
      break;
    }
    popMatrix();
  }
}

void MoverFiguras()
{
  if( mousePressed && (reset != -1) )
  {
    CoordenadaX[reset] += mouseX-pmouseX;
    CoordenadaY[reset] += mouseY-pmouseY;
  }
}

void MenuInicio()
{
  if (nivel==0)
  {
    background(145,148,255);
    fill(255);
    textSize(200);
    textAlign(CENTER,CENTER);
      text("TANGRAM", (width/2),height/4-20);
      
    textSize(40);
      text("1.  Cubra la figura blanca con las diferentes fichas", (width/2),height/2-20);
      text("2.  Seleccione y arrastre las fichas con clic izquierdo", (width/2),height/2+30);
      text("3.  Gire las fichas con clic derecho", (width/2),height/2+80);

    textSize(50);
      textAlign(CENTER,TOP);
      text("De clic para continuar", (width/2),(3*height)/4);
    noLoop();
    nivel++;
  }
}

void contar()
{
  MenuInicio();
  loadPixels();
  
    for(int Pix=0; Pix<pixels.length;Pix++)
    {
      if(pixels[Pix] == color (255))
      {
        Contador++;
        //print(Contador);
      }   
    }
    
    if(Contador==0)
    {
      TextoCortinilla();
        noLoop();
        puntaje=0;
        
      if (nivel>=18)
      {
        fill(0);
        background(145,148,255);
        textSize(200);
          textAlign(CENTER,CENTER);
          text("Completado", width/2, height/2);
        TextoSalida();
      }
      
        nivel++;
        Preestablecer();
    }
    
  Contador=0;
}

void TextoCortinilla()
{
  background(145,148,255);
  
  fill(0);   
    textSize(350);
    textAlign(CENTER,CENTER);
      text("Logrado", width/2, height/3);
    textAlign(CENTER,CENTER);
    textSize(150);
      text("Movimientos: ",80+width/3,50+3*height/4);
      text(puntaje,100+3*width/4,50+3*height/4);
               
  fill(250);
    textSize(50);
    textAlign(CENTER,TOP);
      text("Para Continuar de Clic", width/2, 0);
      
  TextoSalida();    
}

void TextoSalida()
{
  fill(250);
    textSize(30);
    textAlign(CENTER,BOTTOM);
      text("Para Salir Presione ESC", width/2, height);
}

void mousePressed()
{
  loop();
  
  if( mouseButton == LEFT )
  {
    color ColPan = get(mouseX,mouseY);
    
    for(int j=0;j<7;j++)
    {
      if( MatrizColor[j] == ColPan )
      {
        reset = j;
      }
    }   
  }
  puntaje++;
}

void mouseClicked()
{
  if( mouseButton == RIGHT )
  {
    color ColPan = get(mouseX,mouseY);
    
    for(int j=0;j<7;j++)
    {
      if( MatrizColor[j] == ColPan )
      {
        if ( n == 5 && MatrizColor[j]== color(255,128,0))
        {
          tre=(pow(-1,m));
          n=0;
          m++;
        }
          
        if (MatrizColor[j]== color(255,128,0))
        {
          n++;
        }
        
        Rotacion[j]=((Rotacion[j]+1)%8);
      }
    }   
  }  
  puntaje++;
}

void mouseReleased()
{
  reset = -1;
}
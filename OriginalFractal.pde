float bright = 1;

public void setup() {
  size(600, 600);
  //fill(#E5A9C9);
  background(0);
  noStroke();
}

public void draw() {
  //original shape
  //bezier(50, 50, -70, 280, 130, 150, 250, 250);
  //bezier(50, 50, 280, -70, 150, 130, 250, 250);
  //line(50, 50, -70, 280);
  //line(130, 150, 250, 250);
  //line(50, 50, 280, -70);
  //line(150, 130, 250, 250);
  bright-=0.05;
  if(bright < 0.05)
    bright = 0.05;
  myFractal(300, 300, 80, bright);
}

//int i = 0;
//boolean up = true;
//color c = color(0, 0, 0);

public void mouseMoved() {
  
  bright+=0.02;
  //if (up) {
  //  fill(i, i, i);
  //  i++;
  //  if (i == 200)
  //    up = false;
  //}
  //if (!up) {
  //  fill(i, i, i);
  //  i--;
  //  if (i == 50)
  //    up = true;
  //}
}


public void myFractal(int x, int y, float siz, float c) {

  bezier(x, y, x-12*siz, y+23*siz, x+8*siz, y+10*siz, x+20*siz, y+20*siz);
  bezier(x, y, x+23*siz, y-12*siz, x+10*siz, y+8*siz, x+20*siz, y+20*siz);

  if (siz > .2) {
    translate(x, y);
    rotate(PI/6.0);
    translate(-x, -y);
    
    //System.out.println(siz + ", " + c);

    fill(50/(siz/c), 200/(siz/c), 100/(siz/c));
    myFractal(x, y, 9*siz/10, c);
  }
}

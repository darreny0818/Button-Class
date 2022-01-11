class Button {

  //instance variables
  boolean clicked;
  float x, y, w, h, size;
  String text;
  color normal, highlight;

  //constructor
  Button (String t, color n, color hl, float x1, float y1, float w1, float h1) {
    normal = n;
    highlight = hl;
    x = x1;
    y = y1;
    w = w1;
    h = h1;
    text = t;
    clicked = false;
  }

  //behavior functions

  void show () {

    rectMode(CENTER);
    stroke(0);
    strokeWeight(4);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(normal);
    } else {
      fill(highlight);
    }
    rect(x, y, w, h);


    textSize(w/4);
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(highlight);
    } else {
      fill(normal);
    }
    text(text, x, y);


    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}

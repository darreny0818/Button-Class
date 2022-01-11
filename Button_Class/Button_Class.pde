// Color Pallette
// Darren Yang
// October 20th
// Button class

boolean mouseReleased, hadpressed;

color red = #E30202;
color green = #16C632;
color blue = #0D49BC;
color yellow = #F7E943;
color orange = #F0983A;
color purple = #962ED8;
color black = 0;
color white = 255;
color bkg = 150;
Button bluebutton;
Button redbutton;
Button greenbutton;
Button yellowbutton;
Button orangebutton;
Button purplebutton;
Button blackbutton;
Button whitebutton;

void setup () {
  size(800, 800);
  bluebutton = new Button ("Blue", blue, white, 200, 200, 200, 100);
  redbutton = new Button ("Red", red, white, 400, 200, 200, 100);
  greenbutton = new Button ("Green", green, white, 600, 200, 200, 100);
  yellowbutton = new Button ("Yellow", yellow, white, 200, 400, 200, 100);
  orangebutton = new Button ("Orange", orange, white, 400, 400, 200, 100);
  purplebutton = new Button ("Purple", purple, white, 600, 400, 200, 100);
  blackbutton = new Button ("Black", black, white, 200, 600, 200, 100);
  whitebutton = new Button ("White", white, black, 400, 600, 200, 100);
}

void draw () {
  
  if (mousePressed) hadpressed = true;
  if (hadpressed && !mousePressed) {
    mouseReleased = true;
    hadpressed = false;
  } else if (mouseReleased) mouseReleased = false;

  background(bkg);
  bluebutton.show();
  redbutton.show();
  greenbutton.show();
  yellowbutton.show();
  orangebutton.show();
  purplebutton.show();
  blackbutton.show();
  whitebutton.show();

  if (bluebutton.clicked) {
    bkg = blue;
  } else if (redbutton.clicked) {
    bkg = red;
  } else if (greenbutton.clicked) {
    bkg = green;
  } else if (yellowbutton.clicked) {
    bkg = yellow;
  } else if (orangebutton.clicked) {
    bkg = orange;
  } else if (purplebutton.clicked) {
    bkg = purple;
  } else if (blackbutton.clicked) {
    bkg = black;
  } else if (whitebutton.clicked) {
    bkg = white;
  }
  
}

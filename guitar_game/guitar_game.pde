import ddf.minim.*;

Minim minim;
AudioPlayer[] Strings = new AudioPlayer[6];


int x = 700;
int y = 700;
int x1 = 800;
int y1 = 700;
int x2 = 900;
int y2 = 700;
int x3 = 900;
int y3 = 700;
int x4 = 900;
int y4 = 700;
int x5 = 900;
int y5 = 700;

void setup()
{
  size(800, 800);

  //minim- sound//

  minim = new Minim(this);
  Strings[0]= minim.loadFile("guitar string trim 6.mp3");
  Strings[1]= minim.loadFile("guitar string trim 5.mp3");
  Strings[2]= minim.loadFile("guitar string trim 4.mp3");
  Strings[3]= minim.loadFile("guitar string trim 3.mp3");
  Strings[4]= minim.loadFile("guitar string trim 2.mp3");
  Strings[5]= minim.loadFile("guitar string trim 1.mp3");
}

void draw()
{ 

  background(95, 58, 47);
  
  
  stroke(214, 205, 205);
  
  strokeWeight(3);
  line(90, height, 90, 0);
  line(220, y1+300, 220, 1);
  line(360, y2+300, 360, 1);
  line(490, y3+300, 490, 1);
  line(610, y4+300, 610, 1);
  line(730, y5+300, 730, 1);

  if (mouseX > 90 && mouseX < 97)
  {
    if ( Strings[0].position() == Strings[0].length() )
    {
      Strings[0].rewind();
      Strings[0].play();
    } else
    {
      Strings[0].play();
    }
  }

  if (mouseX > 220 && mouseX < 227)
  {
    if ( Strings[1].position() == Strings[1].length() )
    {
      Strings[1].rewind();
      Strings[1].play();
    } else
    {
      Strings[1].play();
    }
  }
  if (mouseX > 360 && mouseX < 367)
  {
    if ( Strings[2].position() == Strings[2].length() )
    {
      Strings[2].rewind();
      Strings[2].play();
    } else
    {
      Strings[2].play();
    }
  }
  if (mouseX > 490 && mouseX < 497)
  {
    if ( Strings[3].position() == Strings[3].length() )
    {
      Strings[3].rewind();
      Strings[3].play();
    } else
    {
      Strings[3].play();
    }
  }
  if (mouseX > 610 && mouseX < 617)
  {
    if ( Strings[4].position() <= Strings[4].length()-2 )
    {
      Strings[4].rewind();
      Strings[4].play();
    } else
    {
      Strings[4].play();
    }
  }
  if (mouseX > 730 && mouseX < 737)
  {
    if ( Strings[5].position() == Strings[5].length() )
    {
      Strings[5].rewind();
      Strings[5].play();
    } else
    {
      Strings[5].play();
    }
  }
}

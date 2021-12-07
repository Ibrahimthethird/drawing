// global Variables()
float drawX, drawY, drawWidth, drawHeight, DrawDiameter;
float rectX, rectY, rectWidth, rectHeight;
float rectX2, rectY2, rectWidth2, rectHeight2;
float buttonX, buttonY, buttonWidth, buttonHeight;
boolean draw=false;
color  buttonColor, yellow=#FFF700, purple=#E334F7, white=#FFFFFF, resetColor=white, red=#FF0009, skin=#E0AC69, bleuEyes=#2832C2, redEyes=#B80F0A;

void setup() {
  background(white);
  fullScreen();
  smooth();
  Population();
  //
  rect(drawX, drawY, drawWidth, drawHeight);
}//End setup()

void draw() {
  if (draw == true && mouseX>drawX && mouseX<drawX+drawWidth && mouseY>drawY && mouseY<drawY+drawHeight) {
    ellipse(mouseX, mouseY, DrawDiameter, DrawDiameter);//this code-line is for line vs circle
  }
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) {
    buttonColor = red; //color(random(255), random(255), random(255));
  } else {
    buttonColor = white;
  }//End IF Button Colour
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetColor);
  //
  if (draw == false && mouseX>drawX && mouseX<drawX+drawWidth && mouseY>drawY && mouseY<drawY+drawHeight) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }//End line Draw
  rect(rectX, rectY, rectWidth, rectHeight);
}//End draw()

void mousePressed() {
  if (mouseX>drawX && mouseX<drawX+drawWidth && mouseY>drawY && mouseY<drawY+drawHeight) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//end draw boolean
  }//end line draw
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) exit();
}// End mouisepresed()

void keyPressed() {
}//emd keupressed()

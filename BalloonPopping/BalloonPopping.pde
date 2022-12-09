//G20917 小林かさね

int no1 = 8;
int no2 = 6;
int [] balloon1_x = new int [no1];
int [] balloon1_y = new int [no1];
int [] balloon2_x = new int [no2];
int [] balloon2_y = new int [no2];
int [] balloon1_speed_y = new int [no1];
int [] balloon2_speed_x = new int [no2];
int [] balloon2_speed_y = new int [no2];
int [] balloon1_hp = new int [no1];
int [] balloon2_hp = new int [no2];
int []red = new int [no1];
int []green = new int [no1]; 
int []blue =  new int [no1]; 
int []red2 = new int [no2];
int []green2 = new int [no2]; 
int []blue2 =  new int [no2]; 
int red3 ;
int green3; 
int blue3; 
int score;
int balloon1;
int balloon2;




void setup(){
  size(600, 600);
  for(int i=0; i<no1; i++){
    balloon1_x[i] = int(random(width-50));
    balloon1_y[i] = 650;
    balloon1_speed_y[i] = int(random(2,5));
    red[i] = int (random(100, 255));
    green[i] = int (random(100, 255));
    blue[i] = int (random(100, 255));
    balloon1_hp[i] = 50;
  }
  for(int i=0; i<no2; i++){
    balloon2_x[i] = int(random(width-40));
    balloon2_y[i] = 650;
    balloon2_speed_y[i] = int(random(5,8));
    balloon2_speed_x[i] = int(random(2,5));
    red2[i] = int (random(100, 255));
    green2[i] = int (random(100, 255));
    blue2[i] = int (random(100, 255));
    balloon2_hp[i] = 20;
  }
  score=0;
  balloon1 = 0;
  balloon2 = 0;
}

void draw(){
  red3 = int (random(100, 255));
  green3 = int (random(100, 255));
  blue3 = int (random(100, 255));
  background(224, 255, 255);
  fill(0);
  text("score : " + score, 10, 15);
  text("balloon1 : " + balloon1, 10, 30);
  text("balloon2 : " + balloon2, 10, 45);
  fill(red3, green3, blue3);
  ellipse(mouseX, mouseY, 30,30);
  if(mousePressed){
    stroke(red3, green3, blue3);
    line(mouseX, mouseY, mouseX, 0);
  }
  for(int i=0; i<no1; i++){
    fill(red[i], green[i], blue[i]);
    noStroke();
    ellipse(balloon1_x[i], balloon1_y[i], 100, 100);
    stroke(red[i], green[i], blue[i]);
    strokeWeight(10);
    line(balloon1_x[i], balloon1_y[i]+50, balloon1_x[i],balloon1_y[i]+60);
    stroke(0,0,0);
    strokeWeight(2);
    line(balloon1_x[i], balloon1_y[i]+63, balloon1_x[i],balloon1_y[i]+170);
    balloon1_y[i] -= balloon1_speed_y[i];
    if(balloon1_y[i] + 50 < 0){
      red[i] = int (random(100, 255));
      green[i] = int (random(100, 255));
      blue[i] = int (random(100, 255));
      balloon1_x[i] = int(random(width-50));
      balloon1_y[i] = 650;
      balloon1_speed_y[i] = int(random(2,5));
      balloon1_hp[i] = 50;
    }
   if(balloon1_x[i]-50<mouseX && mouseX<balloon1_x[i]+50 && balloon1_y[i]<mouseY && mousePressed){
     balloon1_hp[i]--;
   }
   if(balloon1_hp[i]<=0){
      red[i] = int (random(100, 255));
      green[i] = int (random(100, 255));
      blue[i] = int (random(100, 255));
      balloon1_x[i] = int(random(width-50));
      balloon1_y[i] = 650;
      balloon1_speed_y[i] = int(random(2,5));
      balloon1_hp[i] = 50;
      score++;
      balloon1++;
   }
  }
  
  
  for(int i=0; i<no2/2; i++){
  fill(red2[i], green2[i], blue2[i]);
  noStroke();
  ellipse(balloon2_x[i], balloon2_y[i], 80, 80);
  stroke(red2[i], green2[i], blue2[i]);
  strokeWeight(8);
  line(balloon2_x[i], balloon2_y[i]+40, balloon2_x[i],balloon2_y[i]+50);
  stroke(0,0,0);
  strokeWeight(2);
  line(balloon2_x[i]+2, balloon2_y[i]+53, balloon2_x[i]+20,balloon2_y[i]+150);
    balloon2_y[i] -= balloon2_speed_y[i];
    balloon2_x[i] -= balloon2_speed_x[i];
    if(balloon2_x[i] + 40 < 0){
       red2[i] = int (random(100, 255));
       green2[i] = int (random(100, 255));
       blue2[i] = int (random(100, 255));
       balloon2_x[i] = int(random(width));
       balloon2_y[i] = 650;
       balloon2_speed_y[i] = int(random(5,8));
       balloon2_speed_x[i] = int(random(2,5));
       balloon2_hp[i] = 20;
    }
    if(balloon2_y[i] + 40 < 0){
       red2[i] = int (random(100, 255));
       green2[i] = int (random(100, 255));
       blue2[i] = int (random(100, 255));
       balloon2_x[i] = int(random(width));
       balloon2_y[i] = 650;
       balloon2_speed_y[i] = int(random(5,8));
       balloon2_speed_x[i] = int(random(2,5));
       balloon2_hp[i] = 20;
     }
   if(balloon2_x[i]-40<mouseX && mouseX<balloon2_x[i]+40 && balloon2_y[i]<mouseY && mousePressed){
     balloon2_hp[i]--;
   }
   if(balloon2_hp[i]<=0){
    red2[i] = int (random(100, 255));
    green2[i] = int (random(100, 255));
    blue2[i] = int (random(100, 255));
    balloon2_x[i] = int(random(width-40));
    balloon2_y[i] = 650;
    balloon2_speed_y[i] = int(random(5,8));
    balloon2_speed_x[i] = int(random(2,5));
    balloon2_hp[i] = 20;
    score += 2;
    balloon2++;
   }
  }
  
  for(int i=no2/2; i<6; i++){
  fill(red2[i], green2[i], blue2[i]);
  noStroke();
  ellipse(balloon2_x[i], balloon2_y[i], 80, 80);
  stroke(red2[i], green2[i], blue2[i]);
  strokeWeight(8);
  line(balloon2_x[i], balloon2_y[i]+40, balloon2_x[i],balloon2_y[i]+50);
  stroke(0,0,0);
  strokeWeight(2);
  line(balloon2_x[i]-2, balloon2_y[i]+53, balloon2_x[i]-20,balloon2_y[i]+150);
    balloon2_y[i] -= balloon2_speed_y[i];
    balloon2_x[i] += balloon2_speed_x[i];
    if(balloon2_x[i] - 30 < 0){
       red2[i] = int (random(100, 255));
       green2[i] = int (random(100, 255));
       blue2[i] = int (random(100, 255));
       balloon2_x[i] = int(random(width-40));
       balloon2_y[i] = 650;
       balloon2_speed_y[i] = int(random(5,8));
       balloon2_speed_x[i] = int(random(2,5));
     }
    if(balloon2_y[i] - 40 < 0){
       red2[i] = int (random(100, 255));
       green2[i] = int (random(100, 255));
       blue2[i] = int (random(100, 255));
       balloon2_x[i] = int(random(width-40));
       balloon2_y[i] = 650;
       balloon2_speed_y[i] = int(random(5,8));
       balloon2_speed_x[i] = int(random(2,5));
     }
   if(balloon2_x[i]-40<mouseX && mouseX<balloon2_x[i]+40 && balloon2_y[i]<mouseY && mousePressed){
     balloon2_hp[i]--;
   }
   if(balloon2_hp[i]<=0){
     red2[i] = int (random(100, 255));
     green2[i] = int (random(100, 255));
     blue2[i] = int (random(100, 255));
     balloon2_x[i] = int(random(width-40));
     balloon2_y[i] = 650;
     balloon2_speed_y[i] = int(random(5,8));
     balloon2_speed_x[i] = int(random(2,5));
     balloon2_hp[i] = 20;
     score += 2;
     balloon2++;
   }
  }
}


void mousePressed(){
}

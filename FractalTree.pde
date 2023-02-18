private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 

public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320, 380, 100, -PI/2);  
} 

public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double branchLength1 = branchLength * fractionLength;
  double branchLength2 = branchLength * fractionLength;
  
  if (branchLength < smallestBranch) {
    return;
  }
  
  int endX1 = x + (int)(branchLength1 * Math.cos(angle1));
  int endY1 = y + (int)(branchLength1 * Math.sin(angle1));
  line(x, y, endX1, endY1);
  drawBranches(endX1, endY1, branchLength1, angle1);
  
  int endX2 = x + (int)(branchLength2 * Math.cos(angle2));
  int endY2 = y + (int)(branchLength2 * Math.sin(angle2));
  line(x, y, endX2, endY2);
  drawBranches(endX2, endY2, branchLength2, angle2);
}

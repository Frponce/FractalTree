private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640, 480);    
  noLoop();
} 
public void draw() 
{   

  background(0);   



  drawBranches(320, 480, 100, -PI/2);
} 
void drawBranches(int x, int y, double branchLength, double angle) {

  double nextBranchLength = branchLength * fractionLength;

  double x2 = x + cos((float)angle) * branchLength;
  double y2 = y + sin((float)angle) * branchLength;

  strokeWeight(map((float) branchLength, (float) smallestBranch, 100, 1, 7));

  stroke(map((float) branchLength, (float) smallestBranch, 100, 100, 0), 
    map((float) branchLength, (float) smallestBranch, 100, 100, 200), 
    map((float) branchLength, (float) smallestBranch, 100, 0, 255));
    
    
  stroke( random(250), random(200), random(200));  
  line(x, y, (float)x2, (float)y2);
  
  

  if (branchLength > smallestBranch) {
    drawBranches((int)x2, (int)y2, nextBranchLength, angle - branchAngle);
    drawBranches((int)x2, (int)y2, nextBranchLength, angle + branchAngle);
  }
}

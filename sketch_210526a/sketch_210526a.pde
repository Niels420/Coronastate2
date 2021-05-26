Table load;
int x, y;

ArrayList<Corona> corona = new ArrayList<Corona>();
void setup(){
  
  size(1920, 1080);
  background(0,0,123);
  load = loadTable ("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
  
showData();
}

void showData(){
  float y= 15;
  int number = 0;
  for(TableRow r: load.rows()){
    String s = r.getString ("state");
    int i = r.getInt("cases");
    
    int tal = (i/3000);
    if (tal <5){
      fill(255,0,0);
      rect (500,x,y,10);
      tal=4;
    }
    
    corona.add(new Corona(250,y,tal,10));
    number++;
    y+= 15;
    
    fill(255);
    text(s,30,y-5);
    text(i,x+150,y-7);
    
  }
for(Corona c : corona){
if(c!=null)
c.display();
}
}

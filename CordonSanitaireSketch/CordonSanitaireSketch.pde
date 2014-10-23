/*
  Cordon Sanitaire
   - draw a path connecting all people to their closest person
   - Look for intersections, then swap until no intersections. Enforse the convex path.
  by Jonathan Bobrow
  October 17, 2014
*/
ArrayList<Person> persons;
int numPeople = 50;
int startPerson = 0;

Border border;

void setup(){
  size(1000,600,P2D);
  persons = new ArrayList<Person>();
  
  for(int i=0; i<numPeople; i++){
    persons.add(new Person((int)random(0,width), (int)random(0,height)));
  }
  
  border = new Border(persons);
  drawOnce();
}

void draw(){
}

void drawOnce(){
  background(204);
  for(int i=0; i<persons.size(); i++){
    Person p = (Person)persons.get(i);
    p.display();
  }
  
  border.determineBestNearestNeighborPath();
  //border.createNearestNeighborPath(persons.get(startPerson));
  border.display();
}

void keyPressed(){
  if(key == ' ') {
    if(startPerson < numPeople - 1)
      startPerson++;
    else
      startPerson = 0;
      
    drawOnce();
  }
}

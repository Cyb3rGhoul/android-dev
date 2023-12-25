void main(){
  var maps = {
    'name': 'John',
    'age': 20,
    'height': 1.7,
    'isMarried': false
  };

  print(maps['name']);
  print(maps['age']);
  print(maps['height']);
  print(maps['isMarried']);

  //or you can use Map() constructor
  var mapName = Map();
  mapName['name'] = 'John';
  mapName['age'] = 20;
  print(  mapName['name']  );
}
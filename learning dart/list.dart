void main(){
  var listNames = [10,20,30,40,50,60,70,80,90,100]; // List of integers

  listNames.add(110); // add() is used to add an element to the list

  listNames.remove(10); // remove() is used to remove an element from the list

  listNames.removeAt(0); // removeAt() is used to remove an element from the list at a particular index

  listNames.insert(0, 10); // insert() is used to insert an element at a particular index

  listNames.insertAll(0, [1,2,3,4,5,6,7,8,9]); // insertAll() is used to insert multiple elements at a particular index

  listNames.removeRange(0, 10); // removeRange() is used to remove a range of elements from the list

  listNames.removeLast(); // removeLast() is used to remove the last element from the list

  var name = [];
  name.add("harsh");
  name.addAll(listNames); // addAll() is used to add all the elements of one list to another list

  name[1] = "Harsh"; // Updating the value of an element at a particular index

  name.isEmpty; // isEmpty is used to check if the list is empty or not

  print("$name");
}

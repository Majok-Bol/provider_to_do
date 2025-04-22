//handle to do
import 'package:flutter/cupertino.dart';

class ToDo with ChangeNotifier{
  //store list items
  List<String>_tasks=[];
  //getter
//to make the private variable accessible to outside
List<String>get task=>_tasks;
//function to add items to list
void addTask(String taskItem){
  _tasks.add(taskItem);
  notifyListeners();
}
void removeTask(int index){
  _tasks.removeAt(index);
  notifyListeners();
}
}
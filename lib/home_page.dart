//handle home page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_to_do/todo_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    //create instance of todo class mixin
    var todo=Provider.of<ToDo>(context);
    return Scaffold(
      appBar:AppBar(title: Text('Provider package'),centerTitle: true,backgroundColor: Colors.blue.shade300,),
      body:ListView.builder(
        itemCount:todo.task.length,
          itemBuilder:(context,index){
          //increase by its length
          return ListTile(
            onTap:(){
              todo.removeTask(index);
            },

              trailing:Icon(Icons.delete,color: Colors.red,),
          title:Text(todo.task[index]),);

      }),
      floatingActionButton: FloatingActionButton(onPressed:(){
        todo.addTask('Task: ${todo.task.length+1}');
      },backgroundColor: Colors.blue,child:Icon(Icons.add)),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider_to_do/home_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_to_do/todo_model.dart';
void main(){
  runApp(ChangeNotifierProvider(create:(context)=>ToDo(),child: MyApp(),));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
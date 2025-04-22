//handle home page
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();

}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Provider package'),centerTitle: true,backgroundColor: Colors.purple,),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:todo/pages/todo_list_page.dart';

void main(){
  runApp(const MyApp());}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//tras navegação, tema, localização(espanhol,ingles,...)
      title: 'Organizador de tarefas',
      theme: ThemeData(
      primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:TodoListPage(),
    );
  }
}


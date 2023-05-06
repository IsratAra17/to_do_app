import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/style.dart';

class ToDo_page extends StatefulWidget {
  const ToDo_page({Key? key}) : super(key: key);

  @override
  State<ToDo_page> createState() => _ToDo_pageState();
}

class _ToDo_pageState extends State<ToDo_page> {
  List ToDoList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do APP"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(flex:10,child: Row(
              children: [
                Expanded(flex:70,child: TextField(decoration: AppInputDecoration("List Item"),)),
                Expanded(flex:30,child: ElevatedButton(onPressed: (){

                }, child: Text("ADD"), style:MyBtnStyle()))
              ],
            )),
            Expanded(flex:90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                itemBuilder: (context, index) {
                  return Card();
                }))

          ],
        ),
      ),
    );

  }
}

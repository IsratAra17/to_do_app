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
String inputItem="";
  MyInputOnChange(value)
  {
    setState(() {
     inputItem=value;
    });
  }
  AddItem()
  {
    setState(() {
      ToDoList.add({'item':inputItem});
    });
  }

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
                Expanded(flex:70,child: TextField(onChanged: (value) {
                  MyInputOnChange(value);
                }, decoration: AppInputDecoration("List Item"),)),
                Expanded(flex:30,child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: ElevatedButton(onPressed: (){
                    AddItem();

                  }, child: Text("ADD"), style:MyBtnStyle()),
                ))
              ],
            )),
            Expanded(flex:90,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ToDoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child:
                    SizeBox50(
                      Row(

                        children: [
                          Expanded(flex:80,child:Text(ToDoList[index]['item'].toString())),
                          Expanded(flex:20,child:TextButton(onPressed: (){}, child: Icon(Icons.delete,color: Colors.red,),))
                        
                      ],)

                    ),);
                }))

          ],
        ),
      ),
    );

  }
}

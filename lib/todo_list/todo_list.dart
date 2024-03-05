import 'package:flutter/material.dart';

import 'create_work/create_work.dart';
import 'model/item_work.dart';
import 'update_work/update_work.dart';
import 'works/app_bar.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});


  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<ItemWork> _dataWorks = [];
  final ItemWork data = ItemWork(Name: "Name", Description: "Description");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWorks(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.sizeOf(context).width,
        child:  ListView(
            children: _dataWorks.map(
                    (e){
                      final index = _dataWorks.indexOf(e);
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateWork(
                          data: e,indexUpdate: index,dataWorks: _dataWorks,
                        ),),);
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.lightBlue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.Name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                            Text(e.Description, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),)
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ).toList()
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateWork(dataWorks:_dataWorks),),);
        },
      ),
    );
  }

}

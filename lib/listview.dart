import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_app/listviewProvider.dart';
import 'package:provider/provider.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewExample> {


  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(title: const Text('List view With Provider'),),
      body:  Consumer<ListViewProvider>(builder: (context , listProvider , child){
         
      return Column(
        children: [


          ListView.builder(
            
            itemCount:  listProvider.myitemLIst.length,
            itemBuilder: (context , index){
              final item =listProvider.myitemLIst[index];
              final  isTap = listProvider.tapIndex.contains(index);
            return Card(
              child: ListTile(
                leading: Text('$index',style: TextStyle(fontSize: 19),),
                title:  Text(item.title),
                subtitle: Text(item.subtitle),
                hoverColor: Colors.amber,
                splashColor: Colors.blue,
                trailing: Icon(isTap? Icons.favorite: Icons.favorite_border_outlined , color: isTap ? Colors.red : null ),
                onTap: (){
                listProvider.isTapped(index);
                },
              ), 
            );
           },
           
          ),

          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            
          ),
           child: const Text('Click me '))
        ],
      );

      },)
        
      
      
      
      
      
    );
  }
}

class MyItem {
  final String title;
  final String subtitle;

  MyItem({required this.title, required this.subtitle});
}
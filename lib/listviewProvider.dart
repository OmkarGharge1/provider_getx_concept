import 'package:flutter/material.dart';


class ListViewProvider with ChangeNotifier{
 List<MyItem> myitemLIst =[
  MyItem(title: 'Omkar', subtitle: 'Omkar gharge'),
  MyItem(title: 'John ', subtitle: 'John stark'),
  MyItem(title: 'Thor', subtitle: 'Thor'),
  MyItem(title: 'IRON ', subtitle: 'IRON MAN'),
  MyItem(title: 'Captain', subtitle: 'Captain America'),
  MyItem(title: 'Omkar', subtitle: 'Omkar gharge'),
 ];

 List<int> tapIndex =[];
 
 void isTapped(int index){
  if(tapIndex.contains(index)){
    tapIndex.remove(index);
  }else{
    tapIndex.add(index);
  }
  notifyListeners();
 }
}



class MyItem{
  final  String title;
  final  String subtitle;

   MyItem({required this.title,required this.subtitle});
    
  }
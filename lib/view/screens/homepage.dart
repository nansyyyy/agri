import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/options.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int  currentIndex = 0;

 void _onTapped(int index){
  setState(() {
    currentIndex = index;
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: StylishBottomBar(
        notchStyle: NotchStyle.square,
        
        option:AnimatedBarOptions(),
        items: [BottomBarItem(
          icon: Icon(Icons.home_max_outlined), title: Text('Home'),
          selectedColor: Color(0xff1E9B3D),),

          BottomBarItem(
          icon: Icon(Icons.category), title: Text('category'),
          selectedColor: Color(0xff1E9B3D),),
          BottomBarItem(
          icon: Icon(Icons.scanner_outlined), title: Text('scan'),
          selectedColor: Color(0xff1E9B3D),),
          BottomBarItem(
          icon: Icon(Icons.message), title: Text('message'),
          selectedColor: Color(0xff1E9B3D),),
          BottomBarItem(
          icon: Icon(Icons.person), title: Text('person'),
          selectedColor: Color(0xff1E9B3D),)
          ],
           
          currentIndex: currentIndex,
          
          onTap: _onTapped
        
        // items: items, option: option),
      
     ) );
  }
}
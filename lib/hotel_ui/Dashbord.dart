 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hotel_booking_app/hotel_ui/screen3.dart';

import '../screens/home_screen.dart';
import 'hotel_home_screen.dart';


class Dashbord extends StatefulWidget {
Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  int _index=0;
  final PageController _page=PageController();
void _onItemTapped(int index){
  setState((){
    var _selectedIndex = index;
    _page.jumpToPage(index);
  },
  
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home",
            ),
           BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label:"Home",
            ),
             
        ],
      
        onTap: _onItemTapped,
       
      ),
      body: PageView(


        controller: _page,
        children: [
          HotelHomeScreen(),
          HomeScreen(),
          
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile/profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{

  Widget build(BuildContext context) {
 
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color:Colors.indigo,),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color:Colors.indigo,),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color:Colors.indigo,),
              title: Text("Profile"),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break; 
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips("assets/img/person3.jpg"),
              );
              break;

          }
        },
      ),
    );
  }

}
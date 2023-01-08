import 'package:flutter/material.dart';
import 'Pages/Home_screen.dart';
import 'Pages/Search_screen.dart';
import 'Pages/Reels_Screen.dart';
import 'Pages/Notification_screen.dart';
import 'Pages/Profile_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color:  Colors.white30,
      home: Insta(),
    );
  }
}
//////////////////////////////////
class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  int currentIndex = 0;
  void onTap(int i) {
    setState(() {
      currentIndex = i;
    });
  }
  final List<Widget> Screens = [
    Homescreen(), SearchScreen(), ReelsScreen(), NotificationScreen(), ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,size: 32,), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,size: 32,), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.ondemand_video, color: Colors.black,size: 32,), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black,size: 32,), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black,size: 32,), label: 'Profile')
          ] ),
    );
  }
}


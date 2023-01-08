import 'package:flutter/material.dart';
import 'package:instagram/Widgets/Stories.dart';
import 'package:instagram/Widgets/Posts.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
            size: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 12),
            child: IconButton(
              onPressed: () {
               // Navigator.of(context).pushNamed(routeName)
              },
              icon: Icon(
                Icons.messenger_outline_rounded,
                color: Colors.black,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stories(),
          Divider(color: Colors.grey.shade300, thickness: 0.2,),
          Posts(),
        ],),

    );
  }
}

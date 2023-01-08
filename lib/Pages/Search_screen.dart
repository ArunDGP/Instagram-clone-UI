import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container( height: 33, width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5)),
            child: Row(children: [
              SizedBox(width: 10,),
              Icon(Icons.search, color: Colors.grey.shade600,),
              SizedBox(width: 11),
              Text('Search',style: TextStyle(color: Colors.grey.shade700,)),
            ],),
            ),),
         Expanded(
           child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
               itemCount: 200,
               itemBuilder: (context, i) =>
                   Padding(
                     padding: const EdgeInsets.all(1.0),
                     child: Container(color: Colors.purple.shade300,
                     child: Center(child: Text('FLUTTER', style: TextStyle(fontSize:26, fontWeight: FontWeight.w600,color: Colors.purple.shade50),)),
                     ),
                   )),
         )

        ],),
      ),
    );
  }
}

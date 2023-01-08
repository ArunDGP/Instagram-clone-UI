import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  List<dynamic> people = [
    {
      'name': 'Arun',
      'image':
          'https://images.pexels.com/photos/5195607/pexels-photo-5195607.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Jefry',
      'image':
          'https://images.pexels.com/photos/7967362/pexels-photo-7967362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Chandru',
      'image':
          'https://images.pexels.com/photos/14875251/pexels-photo-14875251.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Dany',
      'image':
          'https://images.pexels.com/photos/9607344/pexels-photo-9607344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Glar',
      'image':
          'https://images.pexels.com/photos/14682794/pexels-photo-14682794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Babu',
      'image':
          'https://images.pexels.com/photos/4347482/pexels-photo-4347482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Rajesh',
      'image':
          'https://images.pexels.com/photos/9511985/pexels-photo-9511985.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'name': 'Manoj',
      'image':
          'https://images.pexels.com/photos/3863792/pexels-photo-3863792.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'name': 'Raghul',
      'image':
          'https://images.pexels.com/photos/6073851/pexels-photo-6073851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Santhosh',
      'image':
          'https://images.pexels.com/photos/9269359/pexels-photo-9269359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Shahana',
      'image':
          'https://images.pexels.com/photos/6990438/pexels-photo-6990438.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'name': 'Jasmine',
      'image':
          'https://images.pexels.com/photos/14833511/pexels-photo-14833511.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, i) {
            return Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          people[i]['image']!,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 75,
                        width: 200,
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                children: [
                              TextSpan(
                                text: people[i]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: '  started following you')
                            ])),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 38,
                        width: 75,
                        child: Center(
                            child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}

import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List<Map> people = [
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
    return Container(
        height: 120,
        child: ListView.builder(
            itemCount: people.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 8),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration:
                      BoxDecoration(
                          image: DecorationImage(image: NetworkImage(people[index]['image']), fit: BoxFit.fill ),
                          shape: BoxShape.circle, color: Colors.grey.shade200, border: Border.all(color: Colors.grey.shade500)),
                ),
              ),
              Text(people[index]['name'], style: TextStyle(fontWeight: FontWeight.bold))
            ],
          );
        }));
  }
}

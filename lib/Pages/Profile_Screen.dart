import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'arun.android_apple',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.add_box_outlined,
                  size: 35,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.more_vert,
                  size: 35,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          body:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/9511985/pexels-photo-9511985.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              fit: BoxFit.fill),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade500)),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Column(
                          children: [
                            Text(
                              '49',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '507K',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '244',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],),
                    )
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 9.0,bottom: 5),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Arun D G Prabakaran',  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),),
                    Text('Flutter Developer',  style: TextStyle( fontSize: 20),),
                    Text('Think good, Be good, Do good.',  style: TextStyle(fontSize: 20),),
                      Text('github.com/arun960720',  style: TextStyle(fontSize: 20,color: Colors.blue.shade700),)
                  ],),
               ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Center(child: Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23))),
                          height: 40,width: 320 ,decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5)),),
                          SizedBox(width: 10,),
                         Container(
                           child: Icon(Icons.person_add_outlined),
                           height: 40,width: 40, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5)),),
                      ],
                    ),
                  ),
                  Row(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 8),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration:
                            BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/14682794/pexels-photo-14682794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), fit: BoxFit.fill ),
                                shape: BoxShape.circle, color: Colors.grey.shade200, border: Border.all(color: Colors.grey.shade500)),
                          ),
                        ),
                        Text('V I B E S', style: TextStyle( fontSize: 16),)
                      ],
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 8),
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration:
                          BoxDecoration(
                              image: DecorationImage(image: AssetImage('lib/images/naruto.jpg'), fit: BoxFit.fill ),
                              shape: BoxShape.circle, color: Colors.grey.shade200, border: Border.all(color: Colors.grey.shade500)),
                        ),
                      ),
                      Text('A N I M E', style: TextStyle( fontSize: 16),)
                    ],)
                  ],),
                  TabBar(tabs: [
                    Tab(icon: Icon(Icons.grid_on_sharp, color: Colors.black,size: 28,),),
                    Tab(icon: Icon(Icons.person_pin_outlined, color: Colors.black,size: 28),),
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          itemCount: 10,
                          itemBuilder: (context, i) =>
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(color: Colors.orangeAccent,
                                  child: Center(child: Text('DART', style: TextStyle(fontSize:26, fontWeight: FontWeight.w600,color: Colors.purple.shade50),)),
                                ),
                              )),
                      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          itemCount: 10,
                          itemBuilder: (context, i) =>
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(color: Colors.red.shade500,
                                  child: Center(child: Text('ANDROID/IOS', style: TextStyle(fontSize:26, fontWeight: FontWeight.w600,color: Colors.purple.shade50),)),
                                ),
                              )),
                    ]),
                  )


            ]),
          ),
    );
  }
}

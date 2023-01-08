import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [ Container(
         color: Colors.black,
          height: double.infinity,width: double.infinity,
          child: Column( children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 326, top: 8, bottom: 25),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 30,),
                    ),
                    Text('Instagram Reels',style: TextStyle(color: Colors.white,backgroundColor: Colors.orangeAccent,fontSize: 26))
                  ],
                ),
                )),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.grey.shade700,
            height: 300, width: MediaQuery.of(context).size.width ,
            child: Image.asset('lib/images/japanesechildren.jpg'),
            ),
          ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Container(decoration: BoxDecoration(color: Colors.yellow,shape: BoxShape.circle),height: 30,width: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 6,right: 6),
                            child: Text('children_from_japan',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                          ),
                          Container(child: Center(child: Text('Follow',style: TextStyle(color: Colors.white, fontSize: 19),)),
                          height: 35,width: 70, decoration: BoxDecoration(borderRadius:BorderRadius.circular(6),border: Border.all(color: Colors.white)),)
                        ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Japanese culture #japan, #kids ...', style: TextStyle(color: Colors.white,fontSize: 19),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                          child: Text('Liked by shino_12 and 5,41,768 others', style: TextStyle(color: Colors.white,fontSize: 18,wordSpacing: 6,fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('lindseygeorge_~Oringinal audio',style: TextStyle(fontSize: 19,color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                ))
          ],),
        ),
             Container(
               height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
             child: Padding(
               padding: const EdgeInsets.only(top: 440,bottom: 5,left: 338),
               child: Column(children: [
                 Icon(Icons.favorite_border,color: Colors.white,size: 36),
                 Text('541k', style: TextStyle(color: Colors.white, fontSize: 18)),
                 SizedBox(height: 22,),
                 Icon(Icons.mode_comment_outlined,color: Colors.white,size: 36,),
                 Text('2k', style: TextStyle(color: Colors.white, fontSize: 18)),
                 SizedBox(height: 18 ),
                 Icon(Icons.send_outlined,color: Colors.white,size: 36,),
               ],),
             ),
             )
        ]
      ),
    ));

  }
}
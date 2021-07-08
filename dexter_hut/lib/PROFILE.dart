import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              children: [
                Container(
                  height: mq.height*0.52,
                  width: mq.width,
                    child:Image.network('https://jooinn.com/images/girl-162.jpg',fit: BoxFit.cover,),
                ),
              ],
            ),

            Positioned(
              top: 260,
              //right: 50,
              //left: 50,
              child: Container(
                height: mq.height*0.25,
                width: mq.width*0.86,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:86.0,top: 20),
                      child: Text('Little Butterfly',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 76.0),
                      child: Text('Product Designer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('Kathmandu',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.blueGrey),),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('285',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Text('Likes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Column(
                          children: [
                            Text('3025',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Text('Comments',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Column(
                          children: [
                            Text('650',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Text('Favorites',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 45,
              //bottom: 100,
              child: Container(
                height: mq.height*0.16,
                width: mq.width*0.28,
                child:Image.network('https://jooinn.com/images/girl-162.jpg',fit: BoxFit.cover,),
                //decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.green),
              ),
            ),
            Positioned(
              bottom: -90,
              child: Container(
                height: mq.height*0.5,
                width: mq.width*0.86,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,right: 100,bottom: 8),
                      child: Text('User Information',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    ListContainer(Icons.mail, 'Mail', 'butterfly.little@gmail.com'),
                    ListContainer(Icons.phone, 'Phone', '+977-9815225566'),
                    ListContainer(Icons.mail, 'Website', 'https://littlebutterfly.com')
                  ],

                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
  Widget ListContainer(IconData icon,String Title,String SubTitle){
    return ListTile(
      leading: Icon(icon),
      title: Text(Title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
      subtitle: Text(SubTitle,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
    );
  }
}
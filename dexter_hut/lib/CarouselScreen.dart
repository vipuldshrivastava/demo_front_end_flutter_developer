import 'package:dexter_hut/CategoryScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: mq.height,
            autoPlay: true,
            viewportFraction: 1.0,),
          items: [
            CarouselContainer(mq, Colors.green, 'Welcome', 'Welcome to this awesome intro \nscreen app.','assets/images/image1.png',context),
            CarouselContainer(mq, Colors.blue, 'Awesome app', 'This is an awesome app, of inro \nscreen design.','assets/images/image2.png',context),
            CarouselContainer(mq, Colors.deepPurpleAccent, 'Flutter','Flutter is awesome for \napp devlopment','assets/images/image3.png',context),
          ],
        ),
      ),
    );
  }
  Widget CarouselContainer(Size mq,Color color,String line1,String line2,String image,BuildContext context){
    return Container(
      height: mq.height,
      width: mq.width,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(line1,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 20,),
          Text(line2,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          Container(
            margin: EdgeInsets.all(10),
              height: mq.height*0.45,
              width: mq.width*0.8,
              child: Image.asset(image,fit: BoxFit.cover,)),
          //SizedBox(height: mq.height*0.2,),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child:Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)),
                SizedBox(width: mq.width*0.6,),
                IconButton(
                    onPressed: () {
                  //Navigator.push(context,MaterialPageRoute(builder: (ctx)=>CategoryScreen()));

                  Navigator.pushReplacementNamed(context, './CategoryScreen');
                },
                    icon: Icon(Icons.arrow_forward,size: 40,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

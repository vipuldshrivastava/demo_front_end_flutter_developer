import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.category,
              color: Colors.black,
              size: 25,
            )),
        backgroundColor: Colors.white,
        title: Text(
          'Categories',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 26,
              ))
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.pink,
          labelPadding: EdgeInsets.all(10),
          tabs: [
            Text(
              'For You',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              'Design',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              'Beauty',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              'Education',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryContainer(mq),
            SizedBox(height: 8,),
            CategoryContainer(mq),
            SizedBox(height: 8,),
            CategoryContainer(mq),
            SizedBox(height: 8,),
            CategoryContainer(mq),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded,color: Colors.grey),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.folder_rounded,color: Colors.grey,),label: 'Folder'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded,color: Colors.grey,),label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,color: Colors.grey,),label:'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded,color: Colors.grey,),label: 'Settings'),
        ],
      ),
    );
  }

  Widget CategoryContainer(Size mq) {
    return Stack(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top:10),
            height: mq.height*0.23,
            width: mq.width*0.95,
            color: Colors.white,
          ),
        ),
        Positioned(
          child:Container(
            margin: EdgeInsets.all(3),
            height: mq.height*0.13,
            width: mq.width*0.4,
            color: Colors.pink[100],
          ),
          top: 5,
          left: 3,
        ),
        Container(
          //margin: EdgeInsets.only(top:28),
          margin: EdgeInsets.only(top:25,left: 24,right: 24),
          height: mq.height * 0.19,
          width: mq.width*0.9,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(17),
                height: mq.height * 0.13,
                width: mq.width * 0.15,
                child: Image.network('https://cdn.wallpapersafari.com/24/81/cUh8W7.jpg',fit: BoxFit.cover,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How to Seem Like You \nAlways Have Your \nShot Together',
                    style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: mq.height*0.01,),
                  Row(
                    children: [
                      CircleAvatar(radius: 20,backgroundColor: Colors.pinkAccent,),
                      Text(' Jhonhy Vino',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(width: mq.width*0.07,),
                      Text('2 min read',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

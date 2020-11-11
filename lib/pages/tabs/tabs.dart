import 'package:flutter/material.dart';
import '../home/home.dart';
import '../category/category.dart';
import '../cart/cart.dart';
import '../people/people.dart';

class Tabs extends StatefulWidget{
  _Tabs createState() => _Tabs();
}

class _Tabs extends State<Tabs>{
  int currentIndex = 0;
  PageController pageController;
  List<Widget> pageList = [
    Home(),
    Category(),
    Cart(),
    People(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.pageController = new PageController(initialPage: this.currentIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('贵彩办公'),
      ),
      body: this.pageList[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('我的')
          )
        ],
      ),
    );
  }
}
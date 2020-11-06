
import 'package:flutter/material.dart';




class WrapPage extends StatefulWidget{
  _WrapPage createState() => _WrapPage();
}

class _WrapPage extends State<WrapPage> {
  @override
  List<Widget> list;
  @override
  void initState() { 
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }
  Widget buildAddButton() {
     return GestureDetector(
       onTap: () {
         if(list.length <9) {
            setState(() {
                list.insert(list.length, buildPhoto());
            });
         }
       },
       child: Padding(
         padding: EdgeInsets.all(8),
         child: Container(
           width: 80,
           height: 80,
           color: Colors.grey,
           child: Icon(Icons.add),
         ),
       ),
     );
  }

  Widget buildPhoto() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.pink,
        child: Center(
          child: Text('hello'),
        )
      ),
    );
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.green,
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          )
        ),
      ),
    );
  }
}

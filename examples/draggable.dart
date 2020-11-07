import 'package:flutter/material.dart';


class DraggablePage extends StatefulWidget{
  final Offset offset;
  final Color color;
  DraggablePage({Key key,this.offset,this.color}):super(key:key);
  _DraggablePage createState() => _DraggablePage();
}

class _DraggablePage extends State<DraggablePage>{
  Color _dragrcolor = Colors.green;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(
      title: Text('拖拽'),
    ),
    body: Stack(
      children: <Widget>[
        DraggableComp(
          offset: Offset(80,80),
          color: Colors.pink,
        ),
        DraggableComp(
          offset: Offset(180,80),
          color: Colors.red,
        ),
        Center(
          child: DragTarget(
            onAccept: (Color color) {
              _dragrcolor = color;
            },
            builder: (context,candidateDate,rejectedData) {
              return Container(
                width: 200,
                height: 200,
                color: _dragrcolor,
              );
            },
          ),
        )
      ],
    ),
   );
  }
}



class DraggableComp extends StatefulWidget{
  final Offset offset;
  final Color color;
  DraggableComp({Key key,this.offset,this.color}):super(key:key);
  _DraggableComp createState() => _DraggableComp();
}

class _DraggableComp extends State<DraggableComp>{
  Offset offset = Offset(0,0);
  @override
  void initState() { 
    super.initState();
    offset = widget.offset;

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.color,
        child: Container(
          width: 100,
          height: 100,
          color: widget.color,
        ), 
        feedback: Container(
          width: 100,
          height: 100,
          color: widget.color.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity,Offset offset){
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
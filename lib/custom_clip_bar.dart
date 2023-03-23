import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class CustomClipBarDemo extends StatelessWidget {
  const CustomClipBarDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          ClipPath(
            clipper: SideCutClipper(),
            child: Container(
              height: 150,
              width: 500,
              color: Colors.pink,
              child: Center(child: Text("SideCutClipper()")),
            ),
          ),
          SizedBox(height: 10,),
          ClipPath(
            clipper: MultipleRoundedCurveClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: Center(child: Text("MultipleRoundedCurveClipper()")),
            ),
          ),]);
  }
}
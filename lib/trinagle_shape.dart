import 'package:flutter/material.dart';
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This variable define for better understanding you can direct specify value in quadraticBezierTo method
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);

    //todo: help site : https://medium.com/flutter-community/flutter-custom-clipper-28c6d380fdd6 -->provide various shape path
    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TriangleShape extends StatelessWidget {
  const TriangleShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue,width: 10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(16),
                  //   child: Image.asset("assets/images/img.png",width: 50,),
                  // ),
                  //todo------
                  RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage("assets/images/pic.jpg",),fit: BoxFit.cover)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}


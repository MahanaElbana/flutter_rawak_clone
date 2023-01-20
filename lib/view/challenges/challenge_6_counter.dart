import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rawak_clone/view/challenges/challenge_6_cubuit.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

class CustomPaintChallenge extends StatelessWidget {
  const CustomPaintChallenge({Key? key}) : super(key: key);

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2018),
      firstDate: DateTime(2017),
      lastDate: DateTime.now(),
      builder: (_, Widget? widget) {
        return Theme(
          data: ThemeData(
            primarySwatch: Colors.deepOrange,
            dialogBackgroundColor: Colors.white,
          ),
          child: widget!,
        );
      },
    );
    if (picked != null &&
        picked != CounterController.get(context).selectedTime) {
      CounterController.get(context).changeDate(picked);
    }
  }

  ///
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterController(),
      child: BlocConsumer<CounterController, CounterStates>(
        listener: (BuildContext context, CounterStates states) {},
        builder: (BuildContext context, CounterStates states) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              centerTitle: true,
              title: const ReusableText(
                strText: "custom paint",
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // =========================== Bloc ========================//
                  const SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        heroTag: "decrement",
                       
                          onPressed: () =>
                              CounterController.get(context).decrement(),
                          child: const Icon(Icons.remove)),
                      ReusableText(
                          strText: "${CounterController.get(context).counter}",
                          fontSize: 25.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                      FloatingActionButton(
                         heroTag: "increment",
                          onPressed: () =>
                              CounterController.get(context).increment(),
                          child: const Icon(Icons.add)),
                    ],
                  ),

                  // ======================== _showDatePicker =====================//
                  const SizedBox(height: 40),
                  TextButton(
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: Colors.deepOrange,
                      child: const Center(
                        child: Text("show Dat picker"),
                      ),
                    ),
                    onPressed: () async => await _showDatePicker(context),
                  ),
                  const SizedBox(height: 15),
                  Text("${CounterController.get(context).selectedTime}}"),
                  // ================ sizedBox() ================//
                  const SizedBox(height: 20),
                  //================= Hexagon ================//
                  Container(
                    width: 400,
                    height: 400.0,
                    color: Colors.black,
                    child: CustomPaint(
                      painter: Hexagon(),
                    ),
                  ),
                  // ================ sizedBox() ================//
                  const SizedBox(
                    height: 20,
                  ),
                  //================= Rhombus ================//
                  Container(
                    width: 400,
                    height: 400.0,
                    color: Colors.black,
                    child: CustomPaint(
                      painter: Rhombus(),
                    ),
                  ),
                  // ================ sizedBox() ================//
                  const SizedBox(
                    height: 20,
                  ),
                  //================= Square ================//
                  Container(
                    width: 400,
                    height: 400.0,
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 288,
                          right: 300,
                          child: Transform.scale(
                            scale: 2,
                            child: CustomPaint(
                              painter: Square(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ================ sizedBox() Triangle================//
                  const SizedBox(
                    height: 20,
                  ),
                  //================= Square ================//
                  Container(
                    width: 400,
                    height: 400.0,
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Transform.scale(
                            scale: 1,
                            child: CustomPaint(
                              size: Size(400, 400),
                              painter: Triangle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ================ sizedBox() ================//
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ----------------Rhombus Hexagon--------------------------//

class Hexagon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const int numberOfSides = 6;
    const double radius = 100;
    var angle = (math.pi * 2) / numberOfSides;
    Offset center = Offset(size.width / 2, size.height / 2);

    final path = Path();
    //(100 , 0)
    Offset firstPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));
    path.moveTo(firstPoint.dx + center.dx, firstPoint.dy + center.dy);
    for (int i = 1; i <= numberOfSides; i++) {
      double x = radius * math.cos(angle * i) + center.dx;
      double y = radius * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.greenAccent.shade400
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// ----------------Rhombus --------------------------//

class Rhombus extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    int sides = 4;
    double radius = 100.0;
    var angle = (math.pi * 2) / sides; // 90

    var path = Path();
    Offset center = Offset(size.width / 2, size.height / 2);

    // startPoint => (100.0, 0.0)
    Offset startPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(angle * i) + center.dx;
      double y = radius * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }

    canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.greenAccent.shade700
          ..strokeWidth = 1.0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
// ----------------Square --------------------------//

class Square extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double length = 100;
    canvas.drawPath(
        Path()
          ..moveTo(0, 0)
          ..lineTo(length, 0)
          ..lineTo(length, length)
          ..lineTo(0, length)
          ..lineTo(0, 0)
          ..close(),
        Paint()
          ..style = PaintingStyle.stroke
          ..color = Colors.greenAccent.shade700
          ..strokeWidth = 3.0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// ----------------Square --------------------------//

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        Path()
          ..moveTo(0, size.height)
          ..lineTo(size.width, 0)
          ..lineTo(size.width, size.height)
          ..lineTo(0, size.height)
          ..close(),
        Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.greenAccent.shade700
          ..strokeWidth = 1.0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// -----------------------------------------------//
class SupermanShieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //! is common in all cases ==>  paint
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    //! -- draw line using  ==> canvas.drawLine //

    Offset startingPoint = Offset(0, size.height); //2
    Offset endingPoint = Offset(size.width, 0); //3

    canvas.drawLine(startingPoint, endingPoint, paint);
    //! -- draw line using  ==> canvas.drawPath //
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);

    //! draw circle -- by using drawCircle--- //
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
    //! draw circle -- by using path --- //
    var path1 = Path();
    path1.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 4),
      radius: 30,
    ));
    canvas.drawPath(path1, paint);
    /////////////////////
  }

  //! You can return false in the shouldRepaint method
  //! because there is no need to redraw the line.

  @override
  bool shouldRepaint(SupermanShieldPainter oldDelegate) =>
      // SupermanShieldPainter().old != SupermanShieldPainter;
      false;
}


class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path mainColorsPath = Path();
    mainColorsPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = Colors.red;
    canvas.drawPath(mainColorsPath, paint);

    Path yelcolorPath = Path();
    yelcolorPath.moveTo(size.width - (size.width * 0.1), 0.0);
    yelcolorPath.quadraticBezierTo(size.width * .5, size.height * 0.1, 0,
        size.height - (size.height * 0.15));
    yelcolorPath.lineTo(0, size.height);
    yelcolorPath.lineTo(size.width * .25, size.height);
    yelcolorPath.quadraticBezierTo(
        size.width * .5, size.height * .7, size.width, size.height * 0.6);
    yelcolorPath.lineTo(size.width, 0.0);
    yelcolorPath.close();
    paint.color = Colors.amber;
    canvas.drawPath(yelcolorPath, paint);

    Path purColorsPath = Path();
    purColorsPath.lineTo(size.width * .45, 0);
    purColorsPath.quadraticBezierTo(
        size.width * .25, size.height * .3, 0, size.height * 0.5);
    purColorsPath.close();
    paint.color = Colors.green;
    canvas.drawPath(purColorsPath, paint);

    Path oracolorpath = Path();
    oracolorpath.moveTo(0, size.height * .8);

    oracolorpath.quadraticBezierTo(
        size.width * .25, size.height * .85, size.width * 0.40, size.height);

    oracolorpath.lineTo(0, size.height);
    oracolorpath.close();
    paint.color = Colors.orange;
    canvas.drawPath(oracolorpath, paint);

    Path triColorsPath = Path();
    triColorsPath.lineTo(size.width * 0.25, 0);
    triColorsPath.lineTo(0, size.height * 0.25);
    triColorsPath.close();
    paint.color = Colors.blue;
    canvas.drawPath(triColorsPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

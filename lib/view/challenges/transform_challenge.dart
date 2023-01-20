

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

class TransformChallenge extends StatefulWidget {
  const TransformChallenge({super.key});

  @override
  State<TransformChallenge> createState() => _TransformChallengeState();
}

class _TransformChallengeState extends State<TransformChallenge> {


  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ----------- Header --------------------- //
            buildOutlinedButton(
              backgroundColor: Colors.green,
              function: () {
                Navigator.of(context).pop();
              },
              hoverBackgroundColor: Colors.indigo.shade900,
              name: "الصفحه الرئسية",
              textBackgroundColor: Colors.black,
              textHoverbackgroundColor: Colors.white,
            ),
            const SizedBox(height: 30.0),
            //-----------------------------------//
            //
            //! //////----------- Transform.rotate ---------//////
            ///* ``` Dart
            ///* Transform.rotate(
            ///*   angle: _value * (pi / 180),
            ///*    child: Container(
            ///*    height: 200.0,
            ///*     width: 200.0,
            ///*     color: Colors.blue,
            ///*   ),
            ///* ),
            //! //////----------- Transform.scale ---------//////
            ///* Transform.scale(
            ///*   scale: _value,
            ///*   child: Container(
            ///*     height: 200.0,
            ///*     width: 200.0,
            ///*     color: Colors.blue,
            ///*   ),
            ///* ),
            //! ///----------- Transform.trtranslate ---------//////
            ///*  Transform.translate(
            ///*    //*? " نتعمال كاننا علي شبكه تربيعيه  "
            ///*    offset:Offset(_value,-_value),
            ///*   child: Container(
            ///*    height: 200.0,
            ///*    width: 200.0,
            ///*    color: Colors.blue,
            ///*  ),
            ///* ),
            //! ///----------- Transform with (Matrix4) ---------//////
            //* Transform(
            //*    transform: Matrix4.skew(_value, _value),
            //*   //*? transform:Matrix4.skewX(_value),
            //*   //*? transform: Matrix4.skewY(_value),
            //*   child: Container(
            //*     height: 200.0,
            //*     width: 200.0,
            //*     color: Colors.blue,
            //*   ),
            //* ),
            //! ///----------- transform property ---------//////
            Container(
              transform: Matrix4.rotationZ(_value * (180 / pi))
                ..translate(_value, 0.0, 0.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 13.0,
                        color: Colors.red,
                        offset: Offset(_value, _value)),
                    BoxShadow(
                        blurRadius: 12.0,
                        color: Colors.green,
                        offset: Offset(_value - 5, _value - 5)),
                    BoxShadow(
                        blurRadius: 8.0,
                        color: Colors.pink,
                        offset: Offset(_value - 10, _value - 10)),
                  ]),
              height: 200.0,
              width: 200.0,
              child: const Center(
                child: Text("استخدام الترنزفورم كاخصيه "),
              ),
            ),
            //! ///----------- transform End ---------//////
            ReusableText(
              strText: "value : ${_value.round()}",
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Center(
                child: Slider(
                  value: _value,
                  min: 0.0,
                  // max: 360.0,       //! for Transform.rotate
                  // divisions: 100,   //! for Transform.rotate

                  // max: 4.0,         //! for Transform.scale
                  //divisions: 4,      //! for Transform.scale

                  // max: 100.0,       //! for Transform.translate
                  // divisions: 100,   //! for Transform.translate

                  // max: 5,           //! Transform with (Matrix4)
                  // divisions: 100,   //! Transform with (Matrix4)

                  max: 100.0,
                  divisions: 100,
                  label: "value : ${_value.round()}",
                  activeColor: bOrangeColor,
                  inactiveColor: bBlackColor,
                  onChanged: (value) {
                    setState(
                      () {
                       _value = value;
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

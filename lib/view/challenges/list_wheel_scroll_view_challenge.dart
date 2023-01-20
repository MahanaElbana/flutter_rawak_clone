import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';


class ListWheelScrollViewChallenge extends StatefulWidget {
  const ListWheelScrollViewChallenge({super.key});

  @override
  State<ListWheelScrollViewChallenge> createState() =>
      _ListWheelScrollViewChallengeState();
}

class _ListWheelScrollViewChallengeState
    extends State<ListWheelScrollViewChallenge> {
  static const List<String> names = [
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "habna",
    "hebe",
    "wassem",
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "habna",
    "hebe",
    "wassem",
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "haba",
  ];
  List<Color> colors = List.generate(names.length,
      (index) => Colors.primaries[index % Colors.primaries.length]);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(

          children: [
            const SizedBox(height: 20.0),
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
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 100,
                children: [
                  ...names.map(
                    (name) => Container(
                      width: widthSize,
                      decoration: BoxDecoration(
                        color: colors[index++ % 16],
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 15.0,
                            color: colors[index++ % 16],
                          ),
                        ],
                      ),
                      child: Center(child: Text(name)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

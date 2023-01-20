import 'package:flutter/material.dart';

import '../../constants.dart';

ElevatedButton buildElevatedButton({
  required String name,
  required Color hoverBackgroundColor,
  required Color backgroundColor,
  required Color textHoverbackgroundColor,
  required Color textBackgroundColor,
  required Function function,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return hoverBackgroundColor;
        } else {
          return backgroundColor;
        }
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return textHoverbackgroundColor;
        } else {
          return textBackgroundColor;
        }
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        name,
        style: TextStyle(fontSize: sizeTextButton),
      ),
    ),
    onPressed: () => function,
  );
}

OutlinedButton buildOutlinedButton({
  required String name,
  required Function function,
  required Color backgroundColor,
  required Color hoverBackgroundColor,
  required Color textBackgroundColor,
  required Color textHoverbackgroundColor,
}) {
  return OutlinedButton(
    style: ButtonStyle(
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.white, width: 1.5),
      ),
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return hoverBackgroundColor;
        } else {
          return backgroundColor;
        }
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return textHoverbackgroundColor;
        } else {
          return textBackgroundColor;
        }
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        name,
        style: TextStyle(fontSize: sizeTextButton),
      ),
    ),
    onPressed: () => function(),
  );
}

// ============== ChallengeButton==============//
class ChallengeButton extends StatefulWidget {
  final String strText;
  final Function function;
  
  const ChallengeButton({
    super.key,
    required this.function,
    required this.strText,
    
  });
  @override
  State<ChallengeButton> createState() => _ChallengeButtonState();
}

class _ChallengeButtonState extends State<ChallengeButton> {
  Color backgroundHoverColor = Colors.yellow;
  Color backgroundColor = Colors.grey;
  bool isHovered = false;
  onEntered(bool isHoverdstatus) {
    setState(() {
      isHovered = isHoverdstatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidthSize = MediaQuery.of(context).size.width * 0.7;
    double minWidthSize = MediaQuery.of(context).size.width * 0.45;

    return MouseRegion(
      /////---------  actions -----/////
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      /////---------  actions -----/////
      child: TextButton(
        onPressed: () => widget.function(),
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: isHovered ? backgroundHoverColor : backgroundColor,
          ),
          width: isHovered ? maxWidthSize : minWidthSize,
          height: isHovered ? 150.0 : 50.0,
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceInOut,
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 400),
              style: TextStyle(
                color: isHovered ? bBlackColor : bWhiteColor,
                fontSize: isHovered ? 30.0 : 16.0,
              ),
              child: Text(
                widget.strText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

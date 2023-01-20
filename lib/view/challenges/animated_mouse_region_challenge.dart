import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';

class AnimatedMouseRegionChallenge extends StatefulWidget {
  const AnimatedMouseRegionChallenge({super.key});

  @override
  State<AnimatedMouseRegionChallenge> createState() =>
      _AnimatedMouseRegionChallengeState();
}

class _AnimatedMouseRegionChallengeState
    extends State<AnimatedMouseRegionChallenge> {
  //======= variables & functions =========//
  bool isHoverd = false;

  onEntered(bool isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }

  //======= variables & functions =========//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                MouseRegion(
                  onExit: (event) => onEntered(false),
                  onEnter: (event) => onEntered(true),
                  child: Container(
                    height: 500.0,
                    width: 400.0,
                    color: Colors.indigo.shade900,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 100,
                          right: 100,
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 85, 255, 59),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          padding: const EdgeInsets.all(22.0),
                          color: Colors.white.withOpacity(0.6),
                          height: isHoverd ? 400.0 : 00.0,
                          width: 400.0,
                          duration: const Duration(milliseconds: 200),
                          child: Stack(
                            children: const [
                              Text(
                                "بعض المواد سيُمنح للطالب المنضم لها شهادة إكمال بعد تجاوزه الاختبار النهائي. نأمل مع مرور الوقت في المستقبل القريب عقد اتفاقية مع جهة أكاديمية للإشراف ومنح الشهادات بإسمها.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 00.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: isHoverd == true
                                  ? Colors.indigo.shade900
                                  : Colors.white.withOpacity(0.98),
                              border: Border.all(
                                  color: Colors.indigo.shade900, width: 1.1),
                            ),
                            width: 400,
                            height: 100.0,
                            child: Center(
                              child: Text(
                                "شهادات أكمال ",
                                style: TextStyle(
                                  fontSize: 35.0,
                                  color: isHoverd == true
                                      ? Colors.white.withOpacity(0.98)
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

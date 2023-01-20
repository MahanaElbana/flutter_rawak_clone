import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

class ScaledTransform extends StatelessWidget {
  
  const ScaledTransform({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  TOTO(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(
                      height: 4.0,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TOTO(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(
                      height: 4.0,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TOTO(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(
                      height: 4.0,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(height: 10.0),
                   TOTO(),
                ],
              ),
            ),
          )),
    );
  }
}

class TOTO extends StatelessWidget {
  const TOTO({
    Key? key,
  }) : super(key: key);
final String textStr =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting""";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const AnimatedCard(),
       const SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: SizedBox(
            height: 240.0,
            child: Column(
              children: [
               const ReusableText(
                    strText: "Lorem Ipsum",
                    fontSize: 25.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
                Expanded(
                  child: ReusableText(
                      strText:
                          textStr ,
                      fontSize: 25.0,
                      color: bBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({super.key});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> {
  bool isHoverd = false;
  onEntered(bool isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (event) => onEntered(false),
      onEnter: (event) => onEntered(true),
      child: AnimatedContainer(
        margin: const EdgeInsets.only(left: 20),
        curve: Curves.easeInCirc,
        //!  ////////----------- decoration ------//
        decoration: const BoxDecoration(
          // gradient: LinearGradient(colors: [Color(0xff451245), Color(0xffh89956)]),
          shape: BoxShape.circle,
          backgroundBlendMode: BlendMode.clear,
          color: Colors.amber,
          //borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            image: AssetImage("image/proh.jpg"),
            fit: BoxFit.cover,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.amber,
              offset: Offset(3, -3),
              blurRadius: 12.0,
            )
          ],
        ),
        //! ------ --------- ---------
        width: isHoverd ? 230 : 200,
        height: isHoverd ? 230 : 200,
        transform: isHoverd ? Matrix4.skewY(0.0) : Matrix4.skew(-0.1, 0.1),
        duration: const Duration(milliseconds: 200),
      ),
    );
  }
}

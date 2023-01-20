import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/challenges/animated_mouse_region_challenge.dart';
import 'package:flutter_rawak_clone/view/challenges/counter_bloc/counter_screen.dart';
import 'package:flutter_rawak_clone/view/challenges/transform_challenge.dart';
import 'package:flutter_rawak_clone/view/challenges/list_wheel_scroll_view_challenge.dart';
import 'package:flutter_rawak_clone/view/challenges/list_view_separated_challenge.dart';
import 'package:flutter_rawak_clone/view/challenges/challenge_6_counter.dart';
import 'package:flutter_rawak_clone/view/challenges/scaled_transform.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/navigator_with_animation/model_navigation.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({Key? key}) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; // Size 

    return Container(
      width: double.infinity,
      color: mIndigocolor,
      child: Center(
        child: Column(
          children: [
            ///------------------ SizedBox --------------///
            const SizedBox(height: 40.0),
             ReusableText(
              strText: "التحديات !",
              color: Colors.white,
              fontSize: size.width > 300 ? 70.0 : 20.0,
              fontWeight: FontWeight.bold,
            ),
            ///------------------ SizedBox --------------///
            const SizedBox(height: 40.0),
            ChallengeButton(
              function: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const AnimatedMouseRegionChallenge(),
                  ),
                );
              },
              strText: "Animated MouseRegion",
            ),
            ///------------------ SizedBox --------------///
            const SizedBox(height: 20.0),
            ChallengeButton(
              function: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const TransformChallenge()));
              },
              strText: "Transform",
            ),
            ///------------------ SizedBox --------------///
           const SizedBox(height: 20.0),
            ChallengeButton(
              function: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const ListWheelScrollViewChallenge()));
              },
              strText: "List Wheel ScrollView",
            ),
            ///------------------ SizedBox --------------///
           const SizedBox(height: 20.0),
            ChallengeButton(
              function: () async {
                Navigator.of(context).push(MixNavigation(page:const ListViewSeparatedChallenge()));
              },
              strText: "Separated List View",
            ),
            ///------------------ SizedBox --------------///
           const SizedBox(height: 20.0),

            ChallengeButton(
              function: () async {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) =>const CustomPaintChallenge()));
              },
              strText: "Custom Paint",
            ),

            ///------------------ SizedBox --------------///
         
           const SizedBox(height: 20.0),

            ChallengeButton(
              function: () async {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) =>const CounterScreen()));
              },
              strText: "Bloc Counter Screen ",
            ),

            ///------------------ SizedBox --------------///
            const SizedBox(height: 20.0),

            ChallengeButton(
              function: () async {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ScaledTransform()));
              },
              strText: "ScaledTransform",
            ),

            ///------------------ SizedBox --------------///
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

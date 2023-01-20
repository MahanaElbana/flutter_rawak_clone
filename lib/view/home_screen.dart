import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/screens/about_us.dart';
import 'package:flutter_rawak_clone/view/screens/academic_company.dart';
import 'package:flutter_rawak_clone/view/screens/app_bar_page.dart';
import 'package:flutter_rawak_clone/view/screens/footer_page.dart';
import 'package:flutter_rawak_clone/view/screens/challenge_screen.dart';
import 'package:flutter_rawak_clone/view/screens/subject_train.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(00.0)),
              image: DecorationImage(
                image: AssetImage("image/lib.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column (
                children: const[
                  AppBarPage(),
                  AcademicCampanyPage(),
                  AboutUsPage(),
                   ChallengeScreen(),
                 // SubjectTrain(),
                  FooterPage(),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

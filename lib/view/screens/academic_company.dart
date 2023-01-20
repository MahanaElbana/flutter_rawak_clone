import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/view/screens/responsive.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';

class AcademicCampanyPage extends StatelessWidget {
  const AcademicCampanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double widthMedia = MediaQuery.of(context).size.width;
    // print(widthMedia);

    return Container(
      // height: 1000.0,
      width: double.infinity,
      color: mBlueColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Responsive(
          desktopConstraint: 1504.0,
          tabletConstraint: 990.0,
          largeMobileConstraint: 500.0,
          desktop: const DesktopWidget(),
          mobile: const MobileWidget(),
          tablet: const TabletWidget(),
          largeMobile: const LargeMobileWidget(),
        ),
      ),
    );
  }
}

/////////----------------------- Responsive widgets ---------------//////////
class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40.0),
        AcademicText(textFontSize: 70.0),
        const SizedBox(height: 40.0),
        /////////--------------
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Contant(
                strTextButtonTop:
                    "المحاضرين الجامعيين، الأكاديميين، الخبراء المهنيين",
                strTextbody:
                    "إذا كنت تقوم بتدريس أو تدريب طلاب في معهد، كلية، جامعة، منظمة، في تخصص معين ولديك الرغبة في نقل المحتوى التعليمي إلى جمهور أوسع، فنحن في عون نوفر لك هذه الميزة.",
                strTextButtonBottom: "انضم لعون كمحاضر ",
                containerHeight: 500.0,
                containerWidth: 400.0,
              ),
              const SizedBox(width: 20.0),
              Contant(
                strTextButtonTop:
                    "المعاهد، الأقسام العلمية، الكليات، الجامعات، الجمعيات العلمية، المنظمات التعليمية",
                strTextbody:
                    "تحصل هذه الجهات على حساب شريك أكاديمي وصفحة خاصة بها وبموادها، مساقاتها، مقرراتها، دوراتها، مع تحكم كامل في البيئة التعليمية الالكترونية.",
                strTextButtonBottom: "انضم لعون كشريك اكاديمي",
                containerHeight: 500.0,
                containerWidth: 400.0,
              ),
              const SizedBox(width: 20.0),
              Contant(
                strTextButtonTop:
                    "الجهات الحكومية أوالخاصة، المبادرات التعليمية والتدريبية المستقلة",
                strTextbody:
                    "الجهات (الحكومية أو الخاصة) التي ترغب في إطلاق مبادرات تعليم وتدريب الكتروني مستقلة خاصة بها، يسعدنا التواصل معها وتقديم المشورة والخبرة، والخدمات التقنية.",
                strTextButtonBottom: "اتصل بنا",
                containerHeight: 500.0,
                containerWidth: 400.0,
              ),
            ],
          ),
        ),
        //////////-------
        const SizedBox(height: 70.0),
      ],
    );
  }
}

class TabletWidget extends StatelessWidget {
  const TabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40.0),
            AcademicText(textFontSize: 70.0),
            const SizedBox(height: 40.0),
            /////////--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Contant(
                  strTextButtonTop:
                      "المحاضرين الجامعيين، الأكاديميين، الخبراء المهنيين",
                  strTextbody:
                      "إذا كنت تقوم بتدريس أو تدريب طلاب في معهد، كلية، جامعة، منظمة، في تخصص معين ولديك الرغبة في نقل المحتوى التعليمي إلى جمهور أوسع، فنحن في عون نوفر لك هذه الميزة.",
                  strTextButtonBottom: "انضم لعون كمحاضر ",
                  containerHeight: 700.0,
                  containerWidth: 300.0,
                ),
                const SizedBox(width: 20.0),
                Contant(
                  strTextButtonTop:
                      "المعاهد، الأقسام العلمية، الكليات، الجامعات، الجمعيات العلمية، المنظمات التعليمية",
                  strTextbody:
                      "تحصل هذه الجهات على حساب شريك أكاديمي وصفحة خاصة بها وبموادها، مساقاتها، مقرراتها، دوراتها، مع تحكم كامل في البيئة التعليمية الالكترونية.",
                  strTextButtonBottom: "انضم لعون كشريك اكاديمي",
                  containerHeight: 700.0,
                  containerWidth: 300.0,
                ),
                const SizedBox(width: 20.0),
                Contant(
                  strTextButtonTop:
                      "الجهات الحكومية أوالخاصة، المبادرات التعليمية والتدريبية المستقلة",
                  strTextbody:
                      "الجهات (الحكومية أو الخاصة) التي ترغب في إطلاق مبادرات تعليم وتدريب الكتروني مستقلة خاصة بها، يسعدنا التواصل معها وتقديم المشورة والخبرة، والخدمات التقنية.",
                  strTextButtonBottom: "اتصل بنا",
                  containerHeight: 700.0,
                  containerWidth: 300.0,
                ),
              ],
            ),
            //////////-------
            const SizedBox(height: 70.0),
          ],
        )
      ],
    );
  }
}

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40.0),
        AcademicText(textFontSize: 70.0),
        const SizedBox(height: 40.0),
        /////////--------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Contant(
              strTextButtonTop:
                  "المحاضرين الجامعيين، الأكاديميين، الخبراء المهنيين",
              strTextbody:
                  "إذا كنت تقوم بتدريس أو تدريب طلاب في معهد، كلية، جامعة، منظمة، في تخصص معين ولديك الرغبة في نقل المحتوى التعليمي إلى جمهور أوسع، فنحن في عون نوفر لك هذه الميزة.",
              strTextButtonBottom: "انضم لعون كمحاضر ",
              containerHeight: 500.0,
              containerWidth: 400.0,
            ),
             SizedBox(width: 20.0),
            Contant(
              strTextButtonTop:
                  "المعاهد، الأقسام العلمية، الكليات، الجامعات، الجمعيات العلمية، المنظمات التعليمية",
              strTextbody:
                  "تحصل هذه الجهات على حساب شريك أكاديمي وصفحة خاصة بها وبموادها، مساقاتها، مقرراتها، دوراتها، مع تحكم كامل في البيئة التعليمية الالكترونية.",
              strTextButtonBottom: "انضم لعون كشريك اكاديمي",
              containerHeight: 500.0,
              containerWidth: 400.0,
            ),
             SizedBox(width: 20.0),
            Contant(
              strTextButtonTop:
                  "الجهات الحكومية أوالخاصة، المبادرات التعليمية والتدريبية المستقلة",
              strTextbody:
                  "الجهات (الحكومية أو الخاصة) التي ترغب في إطلاق مبادرات تعليم وتدريب الكتروني مستقلة خاصة بها، يسعدنا التواصل معها وتقديم المشورة والخبرة، والخدمات التقنية.",
              strTextButtonBottom: "اتصل بنا",
              containerHeight: 500.0,
              containerWidth: 400.0,
            ),
          ],
        ),
        //////////-------
        const SizedBox(height: 70.0),
      ],
    );
  }
}

class LargeMobileWidget extends StatelessWidget {
  const LargeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width * 0.8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40.0),
        AcademicText(textFontSize: widthSize < 600.0 ? 50.0 : 70.0),
        const SizedBox(height: 40.0),
        /////////--------------

        Contant(
          strTextButtonTop:
              "المحاضرين الجامعيين، الأكاديميين، الخبراء المهنيين",
          strTextbody:
              "إذا كنت تقوم بتدريس أو تدريب طلاب في معهد، كلية، جامعة، منظمة، في تخصص معين ولديك الرغبة في نقل المحتوى التعليمي إلى جمهور أوسع، فنحن في عون نوفر لك هذه الميزة.",
          strTextButtonBottom: "انضم لعون كمحاضر ",
          containerHeight: 400.0,
          containerWidth: widthSize,
        ),
        const SizedBox(height: 20.0),
        Contant(
          strTextButtonTop:
              "المعاهد، الأقسام العلمية، الكليات، الجامعات، الجمعيات العلمية، المنظمات التعليمية",
          strTextbody:
              "تحصل هذه الجهات على حساب شريك أكاديمي وصفحة خاصة بها وبموادها، مساقاتها، مقرراتها، دوراتها، مع تحكم كامل في البيئة التعليمية الالكترونية.",
          strTextButtonBottom: "انضم لعون كشريك اكاديمي",
          containerHeight: 400.0,
          containerWidth: widthSize,
        ),
        const SizedBox(height: 20.0),
        Contant(
          strTextButtonTop:
              "الجهات الحكومية أوالخاصة، المبادرات التعليمية والتدريبية المستقلة",
          strTextbody:
              "الجهات (الحكومية أو الخاصة) التي ترغب في إطلاق مبادرات تعليم وتدريب الكتروني مستقلة خاصة بها، يسعدنا التواصل معها وتقديم المشورة والخبرة، والخدمات التقنية.",
          strTextButtonBottom: "اتصل بنا",
          containerHeight: 400.0,
          containerWidth: widthSize,
        ),

        //////////-------
        const SizedBox(height: 70.0),
      ],
    );
  }
}

///////////////////////////------------------ reusable widget ----------///////
class Contant extends StatelessWidget {
  final double containerHeight; //500.0 //400.0
  final double containerWidth;
  final String strTextButtonTop;
  final String strTextbody;
  final String strTextButtonBottom;
  const Contant(
      {super.key,
      required this.containerWidth,
      required this.containerHeight,
      required this.strTextButtonTop,
      required this.strTextbody,
      required this.strTextButtonBottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff170055).withOpacity(0.20),
      height: containerHeight,
      width: containerWidth,
      child: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: constraints.maxWidth * 0.8,
                  child: buildElevatedButton(
                      name: strTextButtonTop,
                      backgroundColor: Colors.transparent,
                      function: () {
                        
                      },
                      hoverBackgroundColor: Colors.transparent,
                      textBackgroundColor: bWhiteColor,
                      textHoverbackgroundColor: bBlackColor)),
              Container(
                width: constraints.maxWidth * 0.8,
                child: Text(
                  strTextbody,
                  style: TextStyle(color: bWhiteColor, fontSize: 25.0),
                ),
              ),
              buildElevatedButton(
                  name: strTextButtonBottom,
                  backgroundColor: bOrangeColor!,
                  function: () => print("yes"),
                  hoverBackgroundColor: bOrangeHoverColor!,
                  textBackgroundColor: bWhiteColor,
                  textHoverbackgroundColor: bBlackColor),
            ],
          );
        },
      ),
    );
  }
}

class AcademicText extends StatelessWidget {
  final double textFontSize;

  AcademicText({required this.textFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "الشراكات الأكاديمية",
      style: TextStyle(
          fontSize: textFontSize,
          color: bWhiteColor,
          fontWeight: FontWeight.w700),
    );
  }
}

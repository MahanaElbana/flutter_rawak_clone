import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/view/screens/responsive.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';


/////--------- main page ---------------////////////
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
   // double widthMedia = MediaQuery.of(context).size.width;
    // print(widthMedia);

    return Container(
      //height: 1000.0,
      width: double.infinity,
      color: mWhiteColor,
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
        const SizedBox(height: 50.0),
      const AboutUsText(textFontSize: 70.0),
        const SizedBox(height: 50.0),
        /////////--------------
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               CardAbutAus(
                width: 300.0,
                hight: 500.0,
                backgroundHeight: 100.0,
                strTextBottom: 'محاضرات مرئية',
                bodyText:
                    'نعتني بأدق التفاصيل وقت التسجيل مع المحاضرين لتكون المواد المصورة ذات جودة عالية تشجع الطالب على المشاهدة والمواصلة. كل محاضرة تخضع للمونتاج الاحترافي، ويتم نشرها على شكل عدد من المقاطع القصيرة لأجل التسهيل على الطالب المتابعة والتركيز.',
                urlImage: 'image/clapboard.png',
              ),
              SizedBox(width: 20.0),
              CardAbutAus(
                width: 300.0,
                hight: 500.0,
                backgroundHeight: 100.0,
                strTextBottom: 'مجتمع تعليمي',
                bodyText:
                    'لقاء دوري مباشر مع المحاضر يجيب فيه على أسئلة الطلاب، كما أنه في صفحة كل مقطع من كل محاضرة سيجد الطالب مكان للسؤال والمناقشة مع المدرس والطلاب',
                urlImage: 'image/colorwheel.png',
              ),
              SizedBox(width: 20.0),
              CardAbutAus(
                width: 300.0,
                hight: 500.0,
                backgroundHeight: 100.0,
                strTextBottom: 'تمارين تفاعلية',
                bodyText:
                    'للتأكد من استيعاب الطالب لمضمون المحاضرات، سيجد تمارين تفاعلية تحتوي على سؤال/أسئلة تدور حول المقطع مع تصحيح فوري لإجاباته. بالإضافة إلى التمارين التفاعلية، هناك واجبات ومهام أسبوعية يقوم بتهيئتها المحاضر أو فريق عمل المحتوى وتشكل نسبة من درجة النجاح في المادة بالإضافة إلى الاختبار',
                urlImage: 'image/calculator.png',
              ),
              SizedBox(width: 20.0),
              CardAbutAus(
                width: 300.0,
                hight: 500.0,
                backgroundHeight: 100.0,
                strTextBottom: 'شهادات إكمال',
                bodyText:
                    'بعض المواد سيُمنح للطالب المنضم لها شهادة إكمال بعد تجاوزه الاختبار النهائي. نأمل مع مرور الوقت في المستقبل القريب عقد اتفاقية مع جهة أكاديمية للإشراف ومنح الشهادات بإسمها.',
                urlImage: 'image/ribbon.png',
              ),
            ],
          ),
        ),
        //////////-------
       const SizedBox(
          height: 30.0,
        ),
        buildOutlinedButton(
          name: "اعرف المزيد عن عون",
          function: () {
          //  print("اعرف المزيد عن عون");
          },
          backgroundColor: bOrangeColor!,
          hoverBackgroundColor: bOrangeHoverColor!,
          textBackgroundColor: bWhiteColor,
          textHoverbackgroundColor: bBlackColor,
        ),

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  SizedBox(height: 40.0),
          const  AboutUsText(textFontSize: 70.0),
         const   SizedBox(height: 40.0),
            /////////--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CardAbutAus(
                  width: 450.0,
                  hight: 400.0,
                  backgroundHeight: 100.0,
                  strTextBottom: 'محاضرات مرئية',
                  bodyText:
                      'نعتني بأدق التفاصيل وقت التسجيل مع المحاضرين لتكون المواد المصورة ذات جودة عالية تشجع الطالب على المشاهدة والمواصلة. كل محاضرة تخضع للمونتاج الاحترافي، ويتم نشرها على شكل عدد من المقاطع القصيرة لأجل التسهيل على الطالب المتابعة والتركيز.',
                  urlImage: 'image/clapboard.png',
                ),
                SizedBox(width: 25.0),
                CardAbutAus(
                  width: 450.0,
                  hight: 400.0,
                  backgroundHeight: 100.0,
                  strTextBottom: 'مجتمع تعليمي',
                  bodyText:
                      'لقاء دوري مباشر مع المحاضر يجيب فيه على أسئلة الطلاب، كما أنه في صفحة كل مقطع من كل محاضرة سيجد الطالب مكان للسؤال والمناقشة مع المدرس والطلاب',
                  urlImage: 'image/colorwheel.png',
                ),
              ],
            ),
            //////////-------
          const  SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CardAbutAus(
                  width: 450.0,
                  hight: 400.0,
                  backgroundHeight: 100.0,
                  strTextBottom: 'تمارين تفاعلية',
                  bodyText:
                      'للتأكد من استيعاب الطالب لمضمون المحاضرات، سيجد تمارين تفاعلية تحتوي على سؤال/أسئلة تدور حول المقطع مع تصحيح فوري لإجاباته. بالإضافة إلى التمارين التفاعلية، هناك واجبات ومهام أسبوعية يقوم بتهيئتها المحاضر أو فريق عمل المحتوى وتشكل نسبة من درجة النجاح في المادة بالإضافة إلى الاختبار',
                  urlImage: 'image/calculator.png',
                ),
                SizedBox(width: 25.0),
                CardAbutAus(
                  width: 450.0,
                  hight: 400.0,
                  backgroundHeight: 100.0,
                  strTextBottom: 'شهادات إكمال',
                  bodyText:
                      'بعض المواد سيُمنح للطالب المنضم لها شهادة إكمال بعد تجاوزه الاختبار النهائي. نأمل مع مرور الوقت في المستقبل القريب عقد اتفاقية مع جهة أكاديمية للإشراف ومنح الشهادات بإسمها.',
                  urlImage: 'image/ribbon.png',
                ),
              ],
            ),
            //////////-------
           const SizedBox(
              height: 30.0,
            ),
            buildOutlinedButton(
              name: "اعرف المزيد عن عون",
              function: () {
             //   print("اعرف المزيد عن عون");
              },
              backgroundColor: bOrangeColor!,
              hoverBackgroundColor: bOrangeHoverColor!,
              textBackgroundColor: bWhiteColor,
              textHoverbackgroundColor: bBlackColor,
            ),

            ///
          const  SizedBox(height: 70.0),
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
      const  SizedBox(height: 50.0),
      const  AboutUsText(textFontSize: 70.0),
      const  SizedBox(height: 50.0),
        /////////--------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CardAbutAus(
              width: 300.0,
              hight: 500.0,
              backgroundHeight: 100.0,
              strTextBottom: 'محاضرات مرئية',
              bodyText:
                  'نعتني بأدق التفاصيل وقت التسجيل مع المحاضرين لتكون المواد المصورة ذات جودة عالية تشجع الطالب على المشاهدة والمواصلة. كل محاضرة تخضع للمونتاج الاحترافي، ويتم نشرها على شكل عدد من المقاطع القصيرة لأجل التسهيل على الطالب المتابعة والتركيز.',
              urlImage: 'image/clapboard.png',
            ),
            SizedBox(width: 20.0),
            CardAbutAus(
              width: 300.0,
              hight: 500.0,
              backgroundHeight: 100.0,
              strTextBottom: 'مجتمع تعليمي',
              bodyText:
                  'لقاء دوري مباشر مع المحاضر يجيب فيه على أسئلة الطلاب، كما أنه في صفحة كل مقطع من كل محاضرة سيجد الطالب مكان للسؤال والمناقشة مع المدرس والطلاب',
              urlImage: 'image/colorwheel.png',
            ),
            SizedBox(width: 20.0),
            CardAbutAus(
              width: 300.0,
              hight: 500.0,
              backgroundHeight: 100.0,
              strTextBottom: 'تمارين تفاعلية',
              bodyText:
                  'للتأكد من استيعاب الطالب لمضمون المحاضرات، سيجد تمارين تفاعلية تحتوي على سؤال/أسئلة تدور حول المقطع مع تصحيح فوري لإجاباته. بالإضافة إلى التمارين التفاعلية، هناك واجبات ومهام أسبوعية يقوم بتهيئتها المحاضر أو فريق عمل المحتوى وتشكل نسبة من درجة النجاح في المادة بالإضافة إلى الاختبار',
              urlImage: 'image/calculator.png',
            ),
            SizedBox(width: 20.0),
            CardAbutAus(
              width: 300.0,
              hight: 500.0,
              backgroundHeight: 100.0,
              strTextBottom: 'شهادات إكمال',
              bodyText:
                  'بعض المواد سيُمنح للطالب المنضم لها شهادة إكمال بعد تجاوزه الاختبار النهائي. نأمل مع مرور الوقت في المستقبل القريب عقد اتفاقية مع جهة أكاديمية للإشراف ومنح الشهادات بإسمها.',
              urlImage: 'image/ribbon.png',
            ),
          ],
        ),
        //////////-------
        const SizedBox(
          height: 30.0,
        ),
        buildOutlinedButton(
          name: "اعرف المزيد عن عون",
          function: () {
           // print("اعرف المزيد عن عون");
          },
          backgroundColor: bOrangeColor!,
          hoverBackgroundColor: bOrangeHoverColor!,
          textBackgroundColor: bWhiteColor,
          textHoverbackgroundColor: bBlackColor,
        ),

        ///
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
       const AboutUsText(textFontSize: 70.0),
        const SizedBox(height: 40.0),
        /////////--------------
        CardAbutAus(
          width: widthSize,
          hight: 300.0,
          backgroundHeight: 50.0,
          strTextBottom: 'محاضرات مرئية',
          bodyText:
              'نعتني بأدق التفاصيل وقت التسجيل مع المحاضرين لتكون المواد المصورة ذات جودة عالية تشجع الطالب على المشاهدة والمواصلة. كل محاضرة تخضع للمونتاج الاحترافي، ويتم نشرها على شكل عدد من المقاطع القصيرة لأجل التسهيل على الطالب المتابعة والتركيز.',
          urlImage: 'image/clapboard.png',
        ),
       const SizedBox(height: 20.0),
        CardAbutAus(
          width: widthSize,
          hight: 300.0,
          backgroundHeight: 50.0,
          strTextBottom: 'مجتمع تعليمي',
          bodyText:
              'لقاء دوري مباشر مع المحاضر يجيب فيه على أسئلة الطلاب، كما أنه في صفحة كل مقطع من كل محاضرة سيجد الطالب مكان للسؤال والمناقشة مع المدرس والطلاب',
          urlImage: 'image/colorwheel.png',
        ),
       const SizedBox(height: 20.0),
        CardAbutAus(
          width: widthSize,
          hight: 300.0,
          backgroundHeight: 50.0,
          strTextBottom: 'تمارين تفاعلية',
          bodyText:
              'للتأكد من استيعاب الطالب لمضمون المحاضرات، سيجد تمارين تفاعلية تحتوي على سؤال/أسئلة تدور حول المقطع مع تصحيح فوري لإجاباته. بالإضافة إلى التمارين التفاعلية، هناك واجبات ومهام أسبوعية يقوم بتهيئتها المحاضر أو فريق عمل المحتوى وتشكل نسبة من درجة النجاح في المادة بالإضافة إلى الاختبار',
          urlImage: 'image/calculator.png',
        ),
      const SizedBox(height: 20.0),
        CardAbutAus(
          width: widthSize,
          hight: 300.0,
          backgroundHeight: 50.0,
          strTextBottom: 'شهادات إكمال',
          bodyText:
              'بعض المواد سيُمنح للطالب المنضم لها شهادة إكمال بعد تجاوزه الاختبار النهائي. نأمل مع مرور الوقت في المستقبل القريب عقد اتفاقية مع جهة أكاديمية للإشراف ومنح الشهادات بإسمها.',
          urlImage: 'image/ribbon.png',
        ),

        //////////-------
        //////////-------
      const  SizedBox(
          height: 30.0,
        ),
        buildOutlinedButton(
          name: "اعرف المزيد عن عون",
          function: () {
          //  print("اعرف المزيد عن عون");
          },
          backgroundColor: bOrangeColor!,
          hoverBackgroundColor: bOrangeHoverColor!,
          textBackgroundColor: bWhiteColor,
          textHoverbackgroundColor: bBlackColor,
        ),

        ///
        const SizedBox(height: 70.0),
      ],
    );
  }
}

//////////////------- widget is used implemented only once ---------/////////
class AboutUsText extends StatelessWidget {
  final double textFontSize;

  const AboutUsText({super.key, required this.textFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "منصة عون",
      style: TextStyle(
          fontSize: textFontSize,
          color: bBlackColor,
          fontWeight: FontWeight.w700),
    );
  }
}

class CardAbutAus extends StatefulWidget {
  final String strTextBottom;
  final String bodyText;
  final String urlImage;
  final double width;
  final double hight;
  final double backgroundHeight;

  const CardAbutAus(
      {super.key, required this.strTextBottom,
      required this.bodyText,
      required this.urlImage,
      required this.width,
      required this.hight,
      required this.backgroundHeight});

  @override
 State<CardAbutAus>  createState() => _CardAbutAusState();
}

class _CardAbutAusState extends State<CardAbutAus> {
  bool isHoverd = false;

  onEntered(bool isHoverd) {
    setState(() {
      this.isHoverd = isHoverd;
    });
  }

  //300.0   500.0
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (event) => onEntered(false),
      onEnter: (event) => onEntered(true),
      child: Container(
        height: widget.hight,
        width: widget.width,
                decoration: BoxDecoration(
                 ////--------  Colors  -------------
        color: Colors.white.withOpacity(0.53),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                     bottomRight: Radius.circular(30.0),
                  ),
                ),
                //////////////
        
        child: Stack(
          children: [
            //////--------
            Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage(widget.urlImage), fit: BoxFit.cover)),
              ),
            ),
            //////--------
            AnimatedContainer(
                ///////////
                decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.6),
                  borderRadius:const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                     bottomRight: Radius.circular(30.0),
                  ),
                ),
                //////////////
              padding: const EdgeInsets.all(22.0),
              
              height: isHoverd ? widget.hight : 00.0,
              width: widget.width,
              duration:const Duration(milliseconds: 200),
              child: Stack(
                children: [
                  Text(
                    widget.bodyText,
                    style: const TextStyle(color: Colors.black, fontSize: 22.0),
                  ),
                ],
              ),
            ),
            //////--------
            Positioned(
              bottom: 00.0,
              child: Container(
                ///////////
                decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(0.91),
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                     topRight: Radius.circular(30.0),
                  ),
                ),
                //////////////
                
                width: widget.width,
                height: widget.backgroundHeight,
                child: Center(
                  child: Text(
                    widget.strTextBottom,
                    style:
                       const TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            //////--------
          ],
        ),
      ),
    );
  }
}

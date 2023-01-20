import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/constants.dart';
import 'package:flutter_rawak_clone/view/screens/responsive.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;
    print(widthMedia);

    return Container(
      width: double.infinity,
      //color: mGrayColor,
      color: Colors.white.withOpacity(0.50),
      child: Responsive(
        largeMobileConstraint: 500.0,
        tabletConstraint: 700.0,
        desktopConstraint: 960.0,
        desktop: DesktopWidget(
          viewPort: widthMedia > 1500.0 ? 0.2 : 0.25,
        ),
        mobile: MobileWidget(
          viewPort: 0.2,
        ),
        tablet: TabletWidget(
          viewPort: 0.4,
        ),
        largeMobile: LargeMobileWidget(
          viewPort: 0.5,
        ),
      ),
    );
  }
}

/////////----------------------- Responsive widgets ---------------//////////
class MobileWidget extends StatelessWidget {
  final double viewPort;
  MobileWidget({required this.viewPort});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ////
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Logo(),
            SizedBox(
              height: 25.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton(
                  name: "تصفح المواد",
                  function: () {
                    print("تصفح المواد");
                  },
                  backgroundColor: Colors.transparent,
                  hoverBackgroundColor: Colors.transparent,
                  textBackgroundColor: bWhiteColor,
                  textHoverbackgroundColor: bBlackColor,
                ),
                SizedBox(
                  height: 12.0,
                ),
                buildElevatedButton(
                    name: "أنضم لعون الأن !",
                    hoverBackgroundColor: bOrangeHoverColor!,
                    backgroundColor: bOrangeColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {}),
                SizedBox(height: 12.0),
                buildElevatedButton(
                    name: "دخول",
                    hoverBackgroundColor: bGreyColorHover!,
                    backgroundColor: bGreyColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {
                      print("yes");
                    })
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        TitleText(fontSize: 30.0),

        ///
        SizedBox(
          height: 10.0,
        ),
        InfoText(fontSize: 20.0),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "image/appBar.png",
                    fit: BoxFit.cover,
                    width: 450.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.transparent,
                      child:
                          Image.asset("image/appStore.png", fit: BoxFit.cover)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      child: Image.asset(
                    "image/googlePlay.png",
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ],
          ),
        ),

        ///
        SizedBox(
          height: 25.0,
        ),
        CampanyName(),
        CarouselSliderPro(
          viewport: viewPort,
        ),

        ///
      ],
    );
  }
}

class TabletWidget extends StatelessWidget {
  final double viewPort;
  TabletWidget({required this.viewPort});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Logo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton(
                  name: "تصفح المواد",
                  function: () {
                    print("تصفح المواد");
                  },
                  backgroundColor: Colors.transparent,
                  hoverBackgroundColor: Colors.transparent,
                  textBackgroundColor: bWhiteColor,
                  textHoverbackgroundColor: bBlackColor,
                ),
                SizedBox(
                  width: 12.0,
                ),
                buildElevatedButton(
                    name: "أنضم لعون الأن !",
                    hoverBackgroundColor: bOrangeHoverColor!,
                    backgroundColor: bOrangeColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {}),
                SizedBox(width: 12.0),
                buildElevatedButton(
                  name: "دخول",
                  hoverBackgroundColor: bGreyColorHover!,
                  backgroundColor: bGreyColor!,
                  textHoverbackgroundColor: bBlackColor,
                  textBackgroundColor: bWhiteColor,
                  function: () => print("yes"),
                )
              ],
            ),
          ],
        ),

        SizedBox(
          height: 20.0,
        ),
        TitleText(fontSize: 40.0),
        SizedBox(
          height: 10.0,
        ),
        InfoText(fontSize: 26.0),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "image/appBar.png",
                    fit: BoxFit.cover,
                    width: 650.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.transparent,
                      child:
                          Image.asset("image/appStore.png", fit: BoxFit.cover)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      child: Image.asset(
                    "image/googlePlay.png",
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ],
          ),
        ),
        //////////////////////
        SizedBox(height: 25.0),
        CampanyName(),
        CarouselSliderPro(
          viewport: viewPort,
        ),
      ],
    );
  }
}

class DesktopWidget extends StatelessWidget {
  final double viewPort;
  DesktopWidget({required this.viewPort});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ////
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Logo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton(
                  name: "تصفح المواد",
                  function: () {
                    print("تصفح المواد");
                  },
                  backgroundColor: Colors.transparent,
                  hoverBackgroundColor: Colors.transparent,
                  textBackgroundColor: bWhiteColor,
                  textHoverbackgroundColor: bBlackColor,
                ),
                SizedBox(
                  width: 12.0,
                ),
                buildElevatedButton(
                    name: "أنضم لعون الأن !",
                    hoverBackgroundColor: bOrangeHoverColor!,
                    backgroundColor: bOrangeColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {}),
                SizedBox(width: 12.0),
                buildElevatedButton(
                    name: "دخول",
                    hoverBackgroundColor: bGreyColorHover!,
                    backgroundColor: bGreyColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {
                      print("yes");
                    })
              ],
            ),
          ],
        ),
        /////
        ///
        SizedBox(
          height: 20.0,
        ),
        TitleText(fontSize: 40.0),

        ///
        SizedBox(
          height: 10.0,
        ),
        InfoText(fontSize: 26.0),
        SizedBox(
          height: 20.0,
        ),
        /////////////-------------------------
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "image/appBar.png",
                    fit: BoxFit.cover,
                    width: 780.0,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: Colors.transparent,
                      child:
                          Image.asset("image/appStore.png", fit: BoxFit.cover)),
                  Container(
                      child: Image.asset(
                    "image/googlePlay.png",
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ],
          ),
        ),

        ///
        SizedBox(
          height: 25.0,
        ),
        CampanyName(),
        CarouselSliderPro(viewport: viewPort),

        ///
      ],
    );
  }
}

class LargeMobileWidget extends StatelessWidget {
  final double viewPort;
  LargeMobileWidget({required this.viewPort});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ////
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Logo(),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOutlinedButton(
                  name: "تصفح المواد",
                  function: () {
                    print("تصفح المواد");
                  },
                  backgroundColor: Colors.transparent,
                  hoverBackgroundColor: Colors.transparent,
                  textBackgroundColor: bWhiteColor,
                  textHoverbackgroundColor: bBlackColor,
                ),
                SizedBox(
                  width: 12.0,
                ),
                buildElevatedButton(
                    name: "أنضم لعون الأن !",
                    hoverBackgroundColor: bOrangeHoverColor!,
                    backgroundColor: bOrangeColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {}),
                SizedBox(width: 12.0),
                buildElevatedButton(
                    name: "دخول",
                    hoverBackgroundColor: bGreyColorHover!,
                    backgroundColor: bGreyColor!,
                    textHoverbackgroundColor: bBlackColor,
                    textBackgroundColor: bWhiteColor,
                    function: () {
                      print("yes");
                    })
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        TitleText(fontSize: 30.0),

        ///
        SizedBox(
          height: 10.0,
        ),
        InfoText(fontSize: 20.0),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    "image/appBar.png",
                    fit: BoxFit.cover,
                    width: 450.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.transparent,
                      child:
                          Image.asset("image/appStore.png", fit: BoxFit.cover)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      child: Image.asset(
                    "image/googlePlay.png",
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ],
          ),
        ),

        ///
        SizedBox(
          height: 25.0,
        ),
        CampanyName(),
        CarouselSliderPro(
          viewport: viewPort,
        ),

        ///
      ],
    );
  }
}

///////////////////////////------------------ reusable widget ----------///////

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.only(bottom: 15.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
            ),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.transparent.withOpacity(0.0);
          } else {
            return Colors.transparent.withOpacity(0.0);
          }
        }),
      ),
      onPressed: () {},
      child: Container(
        height: 120.0,
        width: 140.0,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 120.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                      bottomRight: Radius.circular(60.0)),
                  color: Colors.blue,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: 100.0,
                height: 110.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                      bottomRight: Radius.circular(60.0)),
                  color: mIndigocolor,
                ),
                child: Center(
                    child: Text(
                  "عون",
                  style: TextStyle(
                      fontSize: 35.0,
                      color: bWhiteColor,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final double fontSize;
  const TitleText({
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "عون - المنصة العربية للتعليم المفتوح",
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Color(0xff343A40)),
    );
  }
}

class InfoText extends StatelessWidget {
  final double fontSize;
  const InfoText({
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      " مواد أكاديمية مجانية باللغة العربية في شتى المجالات والتخصصات",
      style: TextStyle(fontSize: fontSize, color: Color(0xff343A40)),
    );
  }
}

class CampanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "شركاؤنا",
      style: TextStyle(
          fontSize: 50.0,
          color: Colors.grey.shade900,
          fontWeight: FontWeight.bold),
    );
  }
}

class CarouselSliderPro extends StatelessWidget {
  final double viewport;
  CarouselSliderPro({required this.viewport});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width * 0.8,
      child: CarouselSlider(
        items: [
          "image/ISA7rtk.jpg",
          "image/ad1.png",
          "image/proh.jpg",
          "image/pro2.png",
          "image/ISA7rtk.jpg",
          "image/ad1.png",
          "image/proh.jpg",
          "image/pro2.png",
          "image/ISA7rtk.jpg",
          "image/ad1.png",
          "image/proh.jpg",
          "image/pro2.png",
        ].map((element) {
          return Container(
            height: 220.0,
            width: 220.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    Colors.primaries[element.length % Colors.primaries.length],
                image: DecorationImage(
                  image: AssetImage(element),
                  scale: 0.8,
                )
                //color: e,
                ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 300.0,
          enableInfiniteScroll: true,
          viewportFraction: viewport,
          autoPlayCurve: Curves.easeInOutCubic,
          pageSnapping: true,
          autoPlay: true,
          scrollDirection: Axis.horizontal,

          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 1),
          //aspectRatio: 2.0,

          //aspectRatio: 16 / 9,
          initialPage: 1,
          /* onPageChanged: (int index, _) {
                      carouselController.changeIndex1(index);
                    },*/
        ),
      ),
    );
  }
}

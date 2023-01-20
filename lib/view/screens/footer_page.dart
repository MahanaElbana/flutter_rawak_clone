import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/widget/reusable_text.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_rawak_clone/view/screens/responsive.dart';



class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;
    print(widthMedia);

    return Container(
      //height: 500.0,
      width: double.infinity,
      color: Colors.blue.shade500,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ////--------  ----------///
            SizedBox(
              height: 30.0,
            ),
            ReusableText(
                strText: "لنكُن على تواصل",
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.normal),
            SizedBox(
              height: 30.0,
            ),
            ////--------  ----------///
            Responsive(
              desktopConstraint: 1504.0,
              tabletConstraint: 990.0,
              largeMobileConstraint: 500.0,
              desktop: DesktopWidget(),
              mobile: MobileWidget(),
              tablet: TabletWidget(),
              largeMobile: LargeMobileWidget(),
            ),
            ////--------  ----------///
            SizedBox(
              height: 30.0,
            ),
            ReusableText(
                strText: "جميع الحقوق محفوظة © عون",
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.normal),
            ////--------  ----------///
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

/////////---------------- Responsive widgets ---------------//////
class MobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           physics: BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.telegram,
                  func: () {},
                  hoverColor: Colors.blue.shade800),
              SizedBox(width: 12.0),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.twitter,
                  func: () {},
                  hoverColor: Colors.blue.shade800),
              SizedBox(width: 12.0),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.whatsapp,
                  func: () {},
                  hoverColor: Colors.green.shade800),
              SizedBox(width: 12.0),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.googlePlus,
                  func: () {},
                  hoverColor: Colors.red.shade900),
              SizedBox(width: 12.0),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.facebookMessenger,
                  func: () {
                    print("facebookMessenger");
                  },
                  hoverColor: Colors.blue.shade800),
              SizedBox(
                width: 12.0,
              ),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.facebook,
                  func: () {
                    print("facebook");
                  },
                  hoverColor: Colors.indigo),
              SizedBox(
                width: 12.0,
              ),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.youtube,
                  func: () {
                    print("youtube");
                  },
                  hoverColor: Colors.red.shade900),
              SizedBox(
                width: 12.0,
              ),
              SocialApp(
                  containerRadius: 60.0,
                  iconSize: 40.0,
                  iconData: FontAwesomeIcons.instagram,
                  func: () {
                    print("instagram");
                  },
                  hoverColor: Colors.pink),
            ],
          ),
        );
    
  }

}

class LargeMobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // double widthSize = MediaQuery.of(context).size.width * 0.8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
 SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.telegram,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.twitter,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.whatsapp,
                func: () {},
                hoverColor: Colors.green.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.googlePlus,
                func: () {},
                hoverColor: Colors.red.shade900),

          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.facebookMessenger,
                func: () {
                  print("facebookMessenger");
                },
                hoverColor: Colors.blue.shade800),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.facebook,
                func: () {
                  print("facebook");
                },
                hoverColor: Colors.indigo),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.youtube,
                func: () {
                  print("youtube");
                },
                hoverColor: Colors.red.shade900),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 50.0,
                iconSize: 30.0,
                iconData: FontAwesomeIcons.instagram,
                func: () {
                  print("instagram");
                },
                hoverColor: Colors.pink),

          ],
        )
      ],
    );
  }
}

class TabletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.telegram,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.twitter,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.whatsapp,
                func: () {},
                hoverColor: Colors.green.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.googlePlus,
                func: () {},
                hoverColor: Colors.red.shade900),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.facebookMessenger,
                func: () {
                  print("facebookMessenger");
                },
                hoverColor: Colors.blue.shade800),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.facebook,
                func: () {
                  print("facebook");
                },
                hoverColor: Colors.indigo),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.youtube,
                func: () {
                  print("youtube");
                },
                hoverColor: Colors.red.shade900),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 60.0,
                iconSize: 40.0,
                iconData: FontAwesomeIcons.instagram,
                func: () {
                  print("instagram");
                },
                hoverColor: Colors.pink),
          ],
        )
      ],
    );
  }
}

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.telegram,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.twitter,
                func: () {},
                hoverColor: Colors.blue.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.whatsapp,
                func: () {},
                hoverColor: Colors.green.shade800),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.googlePlus,
                func: () {},
                hoverColor: Colors.red.shade900),
            SizedBox(width: 12.0),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.facebookMessenger,
                func: () {
                  print("facebookMessenger");
                },
                hoverColor: Colors.blue.shade800),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.facebook,
                func: () {
                  print("facebook");
                },
                hoverColor: Colors.indigo),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.youtube,
                func: () {
                  print("youtube");
                },
                hoverColor: Colors.red.shade900),
            SizedBox(
              width: 12.0,
            ),
            SocialApp(
                containerRadius: 70.0,
                iconSize: 50.0,
                iconData: FontAwesomeIcons.instagram,
                func: () {
                  print("instagram");
                },
                hoverColor: Colors.pink),
          ],
        )
      ],
    );
  }
}

//! //////////////////--------- reusable widget ----------///////
class SocialApp extends StatefulWidget {
  final IconData iconData;
  final Function func;
  final Color hoverColor;
  final double iconSize;
  final double containerRadius;
  const SocialApp(
      {required this.iconData,
      required this.func,
      required this.hoverColor,
      required this.iconSize,
      required this.containerRadius});

  @override
  _SocialAppState createState() => _SocialAppState();
}

class _SocialAppState extends State<SocialApp> {
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
        height:isHoverd? widget.containerRadius+20: widget.containerRadius,
        width: isHoverd? widget.containerRadius+20: widget.containerRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.60),
        ),
        duration: Duration(milliseconds: 300),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return widget.hoverColor;
              } else {
                return Colors.blue;
              }
            }),
          ),
          child: FaIcon(widget.iconData, size:isHoverd? widget.iconSize+29:widget.iconSize),
          onPressed: () => widget.func(),
        ),
      ),
    );
  }
}

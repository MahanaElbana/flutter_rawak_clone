import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/screens/responsive.dart';

class SubjectTrain extends StatefulWidget {
  const SubjectTrain({super.key});

  @override
  State<SubjectTrain> createState() => _SubjectTrainState();
}

class _SubjectTrainState extends State<SubjectTrain> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white.withOpacity(0.9),
      alignment: Alignment.center,
      width: double.infinity,
      height:w > 900.0 ? 800.0: 1400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height:25.0,width: 5.0,color: Colors.blue,),
             const  SizedBox(width: 12.0,),
             const Text(
                "مسارات التعلم ",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        const  SizedBox(height: 20.0,),
          Responsive(
            desktopConstraint: 1000.0,
            largeMobileConstraint:500.0 ,
            tabletConstraint: 700.0,
            desktop: Center(child: DesktopWidget()),
            mobile: Center(child: MobileWidget()),
            tablet: Center(child: MobileWidget()),
            largeMobile:Center(child: MobileWidget()) ,
          ),
        ],
      ),
    );
  }
}

class MobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        bulidSubject(
            widthSubj: 400.0,
            urlImage: "image/dart.jpg",
            nameSubject: "مسار تعلم دارت "),
        SizedBox(
          height: 28.0,
        ),
        bulidSubject(
            widthSubj: 400.0,
            urlImage: "image/flutt.jpg",
            nameSubject: "مسار تعلم الفلاتر"),
        SizedBox(
          height: 28.0,
        ),
        bulidSubject(
            widthSubj: 400.0,
            urlImage: "image/prerequist.jpg",
            nameSubject: "توضيح المتطلبات السابقه "),
             SizedBox(
          height: 28.0,
        ),
      ],
    ));
  }
}

class TabletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bulidSubject(
                    widthSubj: 350.0,
                    urlImage: "image/dart.jpg",
                    nameSubject: "مسار تعلم الفلاتر"),
                SizedBox(
                  width: 12.0,
                ),
                bulidSubject(
                    widthSubj: 350.0,
                    urlImage: "image/flutt.jpg",
                    nameSubject: "مسار تعلم دارت "),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            bulidSubject(
                widthSubj: 350.0,
                urlImage: "image/prerequist.jpg",
                nameSubject: "توضيح المتطلبات السابقه "),
          ],
        ),
      
    );
  }
}

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        width: 1200,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bulidSubject(
                widthSubj: 350,
                urlImage: "image/dart.jpg",
                nameSubject: "مسار تعلم دارت "),
            SizedBox(
              width: 30.0,
            ),
            bulidSubject(
              widthSubj: 350,
              urlImage: "image/flutt.jpg",
              nameSubject: "مسار تعلم الفلاتر",
            ),
            SizedBox(
              width: 30.0,
            ),
            bulidSubject(
                widthSubj: 350,
                urlImage: "image/prerequist.jpg",
                nameSubject: "توضيح المتطلبات السابقه "),
          ],
        ),
      
    );
  }
}

Column bulidSubject(
    {required String urlImage,
    required String nameSubject,
    required double widthSubj}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 200,
        width: widthSubj,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0)),
          image: DecorationImage(
            image: AssetImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 100,
        width: widthSubj,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Text(
            nameSubject,
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hive/hive.dart';

class RatingPage extends StatefulWidget {
 

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int ratingValue = 0 ;
  int exellent = 0;
  int good = 0;
  int medium =0 ;
  int acceptable =0 ;
  int bad =0;

  void determineRating(){
    if(ratingValue == 5 ){
        setState(() {
          exellent = 1;
        });
    }
    else if (ratingValue ==4){

    }
    else if (ratingValue ==3){}
    else if (ratingValue ==2){}
    else if (ratingValue ==1){}
  }
  Future<void> openBox()async{
    await Hive.openBox("rating");
  }
  Future<void> addRating()async{
    var box =Hive.box("rating");
    box.put(1,ratingValue);
    
  }
  @override
  void initState() {
   openBox();
    super.initState();
  }
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      //height: 1000.0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: 1000.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //////////////////////// title //////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  height: 30.0,
                  width: 3.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "نحن نهتم بتقيمك لهذه المحتوي ",
                  style: TextStyle(fontSize: width>600?35:25, fontWeight: FontWeight.bold),
                )
              ],
            ),
           
            SizedBox(
              height: 35.0,
            ),
            Container(
              height: 60.0,
              width: double.infinity,
              color: Color(0xffFFF3CD),
              child: Center(
                child: Text(
                  "كن اول شخص يقوم بتقيم هذه المحتوي",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff856418)),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
             //////////////////////// title //////////////
            Column(
              children: [
               width>1100.0? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ratingMethod(
                            str: "ممتاز", rateInt: 5.0, padWidth: 50.0 + 100,numRate: exellent),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "جيد", rateInt: 4.0, padWidth: 58.0 + 100,numRate: good),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "متوسط", rateInt: 3.0, padWidth: 15.0 + 100,numRate: medium),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "مقبول", rateInt: 2.0, padWidth: 36.0 + 100,numRate: acceptable),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "سئ", rateInt: 1.0, padWidth: 58.0 + 100,numRate: bad),
                      ],
                    ),
                    SizedBox(width: 45.0),
                    if(width>1033.0)
                    Container(
                      height: 400.0,
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    if(width>1033.0)
                    SizedBox(
                      width: 12.0,
                    ),
                    if(width>1033.0)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200.0,
                          width: 200.0,
                          color: Colors.amber,
                          child: Center(
                              child: Text(
                            "0",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          )),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 5.0,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("0 تقيمات"),
                      ],
                    ),
                  ],
                )
                 :  Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ratingMethod(
                            str: "ممتاز", rateInt: 5.0, padWidth: 50.0 ,numRate: exellent),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "جيد", rateInt: 4.0, padWidth: 58.0 ,numRate: good),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "متوسط", rateInt: 3.0, padWidth: 15.0 ,numRate: medium),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "مقبول", rateInt: 2.0, padWidth: 36.0 + 100,numRate: acceptable),
                        SizedBox(
                          height: 25.0,
                        ),
                        ratingMethod(
                            str: "سئ", rateInt: 1.0, padWidth: 58.0 ,numRate: bad),
                      ],
                    ),
                    
                 if(width <1033.0)
                Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200.0,
                          width: 200.0,
                          color: Colors.amber,
                          child: Center(
                              child: Text(
                            "0",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          )),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 5.0,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("0 تقيمات"),
                      ],
                    ),

                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[300]),
                )
              ],
            )
            /////////////////////////////////////////
            ,
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "كام نجمة ؟",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        //allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          setState(() {
                            ratingValue = ratingValue;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "أكتب رأيك ",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 150,
                        child: TextField(
                          maxLength: 4,
                          decoration: InputDecoration(),
                          //  maxLength: 9,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.deepPurple;
                            } else {
                              return Colors.grey;
                            }
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("أرسال تقيمي", style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /////////////////////////////////////////
             SizedBox(
              height: 35.0,
            ),
            Container(width: double.infinity,color: Colors.grey[300],height: 12,)
          ],
        ),
      ),
    );
  }

  Column ratingMethod(
      {required String str,
      required double rateInt,
      required double padWidth,required int numRate}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              str,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: padWidth,
            ),
            RatingBar.builder(
              initialRating: rateInt,
              minRating: 1,
              direction: Axis.horizontal,
              //allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 100.0,
            ),
            Text(
              "${numRate.toString()} تقيميات",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[200]),
            width: 700.0,
            height: 15.0,
          ),
        
      ],
    );
  }
}

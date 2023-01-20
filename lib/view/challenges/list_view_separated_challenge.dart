import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/widget/buttons.dart';


class ListViewSeparatedChallenge extends StatefulWidget {
  const ListViewSeparatedChallenge({super.key});

  @override
 State<ListViewSeparatedChallenge>  createState() => _ListViewSeparatedChallengeState();
}

class _ListViewSeparatedChallengeState extends State<ListViewSeparatedChallenge> {


  List<String> names = [
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "habna",
    "hebe",
    "wassem",
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "habna",
    "hebe",
    "wassem",
    "mahney",
    "ali",
    "ahmed",
    "ibrahem",
    "ansery",
    "yessaf",
    "mamdoh",
    "reham",
    "haba",
  ];

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
       // -------  header ------------//
            const SizedBox(height: 20.0),
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
            // -------  body ------------//
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                // -------  separatorBuilder ------------//
                separatorBuilder: (__, _) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Divider(),
                ),
                itemBuilder: (BuildContext context, int index) {
                  var item = names[index];
                  return Dismissible(
                    key: Key("$item $index"),
                    // =======================    onDismissed   =======================//
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        names.removeAt(index);
                      });
                      SnackBar snackBar =  SnackBar(
                        backgroundColor: Colors.black,
                        content: Row(
                          children: [
                            Text(
                              "item is deleted !",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.primaries[index % 16]),
                            ),
                            Text(
                              "number of items ${names.length} !",
                              style:const  TextStyle(fontSize: 25.0, color: Colors.blue),
                            ),
                          ],
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    // ======= confirmDismiss ==> (onDismissed) تاكيد هل يتم تنفيذ   ========//
                    confirmDismiss: (DismissDirection direction) async {
                      final bool resp = await showDialog(
                  
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                      
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             const  Text(
                                "is you want dalete item !",
                                style: TextStyle(fontSize: 25.0),
                              ),
                             const SizedBox(height: 25.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    child: Container(
                                      color: Colors.deepOrange,
                                      height: 60.0,
                                      width: 100.0,
                                      child: const Center(
                                        child: Text("delete",style: TextStyle(fontSize: 22.0 ,color: Colors.black),),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                  ),
                                const  SizedBox(
                                    width: 25.0,
                                  ),
                                  TextButton(
                                    child: Container(
                                      color: Colors.deepOrange,
                                      height: 60.0,
                                      width: 100.0,
                                      child: const Center(
                                        child: Text("cancel",style: TextStyle(fontSize: 22.0 ,color: Colors.black),),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop(false);
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                      return resp;
                    },
                    // =======================   background ========//
                    background: Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.black,
                      child:  const Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ),
                     // =======================  secondaryBackground  ========//  
                     secondaryBackground: Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.green,
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ),
                     // =======================  child   ========//
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(20.0),
                        height: 90.0,
                        width: widthSize,
                        decoration: BoxDecoration(
                          color: Colors.primaries[index % 16],
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 15.0,
                              color: Colors.primaries[index % 16],
                            ),
                          ],
                        ),
                        child:  Center(child: Text(item)),
                      ),
                    ),
                    // ======================= =======================//
                  );
                },
                itemCount: names.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

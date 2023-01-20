import "package:flutter/material.dart";


//import 'package:http/http.dart' as http;
class Django extends StatefulWidget {
  const Django({Key? key}) : super(key: key);

  @override
  _DjangoState createState() => _DjangoState();
}

class _DjangoState extends State<Django> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Django"),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          //await getData();
          
        },
        child: Icon(Icons.gesture),
      ),
    );
  }
}

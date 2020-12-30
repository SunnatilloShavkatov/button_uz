import 'package:flutter/material.dart';
import 'package:flutter_button/flutter_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Button"),
        toolbarHeight: 60,
        elevation: 1.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          FlutterButton(
            height: 56,
            width: 300,
            color: Colors.blue,
            child: Text("Click to here."),
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
            onPressed: () => print("object"),
          ),
          FlutterButton(
            child: Text("Click to here."),
            padding: const EdgeInsets.all(16),
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            onPressed: () => print("object"),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: Colors.black,
              ),
            ),
            child: Center(child: Text("Click to here.")),
          )
          //   FlutterButton(
          //     alignment: Alignment.center,
          //     color: Colors.blue,
          //     child: Text("Click"),
          //     onPressed: () => print("object"),
          //     height: 56,
          //     width: 300,
          //     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       FlutterButton(
          //         shape: CircleBorder(),
          //         alignment: Alignment.center,
          //         color: Colors.blue,
          //         child: Text("Click"),
          //         onPressed: () => print("object"),
          //         height: 56,
          //         width: 56,
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          //       ),
          //       FlutterButton(
          //         // decoration: BoxDecoration(
          //         //   // color: Colors.white,
          //         //   shape: BoxShape.circle,
          //         //   boxShadow: [
          //         //     BoxShadow(
          //         //       color: Color(0xff000000).withOpacity(0.2),
          //         //       offset: Offset(0, 5),
          //         //       blurRadius: 20,
          //         //       spreadRadius: 3,
          //         //     ),
          //         //   ],
          //         // ),
          //         shape: CircleBorder(
          //           side: BorderSide(width: 1, color: Colors.black),
          //         ),
          //         child: Text("Click"),
          //         onPressed: () => print("object"),
          //         // height: 56,
          //         // width: 56,
          //         // margin:
          //         //     const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          //       ),
          //     ],
          //   ),
          // ],
        ],
      ),
    );
  }
}

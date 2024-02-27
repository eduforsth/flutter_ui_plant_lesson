import 'package:flutter/material.dart';
import 'package:ui_plant/main_screen/body.dart';
import 'package:ui_plant/second_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'second': (context) => const SecondScreen()},
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          // leading: Icon(Icons.short_text_outlined, textDirection: TextDirection.rtl,color: Colors.white,),
          leading:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            appBarLeading(),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: appBarLeading(),
            ),
          ]),
          elevation: 0,
          backgroundColor: Colors.brown,
        ),
        body: Body(),
      ),
    );
  }

  Container appBarLeading() {
    return Container(
      height: 2,
      width: 15,
      color: Colors.white,
    );
  }
}

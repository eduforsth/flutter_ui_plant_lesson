import 'package:flutter/material.dart';
import 'package:ui_plant/main_screen/body.dart';
import 'package:ui_plant/second_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int _currentIndex = 0;

class _MyAppState extends State<MyApp> {
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
        body: const Body(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
          setState(() {
            _currentIndex = value;
          });
          },
          currentIndex: _currentIndex,
          items: [
             BottomNavigationBarItem(icon: Icon(_currentIndex == 0? Icons.star_purple500_sharp : Icons.star_border_outlined), label: ''),
             BottomNavigationBarItem(icon: Icon(_currentIndex == 1? Icons.favorite : Icons.favorite_border_outlined), label: ''),
             BottomNavigationBarItem(icon: Icon(_currentIndex == 2? Icons.person : Icons.person_outline_outlined), label: ''),
          ], 
        ),
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

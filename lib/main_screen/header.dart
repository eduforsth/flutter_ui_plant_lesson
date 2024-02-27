import 'package:flutter/material.dart';
import 'package:ui_plant/custom_style.dart';

class Header extends StatelessWidget {
  const Header ({super.key});

  @override
  Widget build(BuildContext context) {
    return         Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  )),
            ),
            Positioned(
                left: 20,
                 top: 20,
                child: cTextStyle(text: 'Hi Uishopy!', color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            Positioned(
              left: 20,
              right: 20,
              bottom: -25,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(55),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          spreadRadius: 2,
                          blurRadius: 20,
                          color: Colors.grey.shade400)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('Search', style: TextStyle(color: Colors.grey.shade500),),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10)
                            ),
                          ),
                        ),
                         Icon(Icons.search, color: Colors.grey.shade500,)
                      ]),
                ),
              ),
            ),
            const Positioned(
                right: 20,
                 top: 20,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.brown,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: FlutterLogo(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: CircleAvatar(backgroundColor: Colors.red, radius: 3,))
                  ],
                ))
          ],
        );
  }
}
import 'package:flutter/material.dart';
import 'package:ui_plant/custom_style.dart';
import 'package:ui_plant/data.dart';
import 'package:ui_plant/main_screen/header.dart';
import 'package:ui_plant/main_screen/list_item.dart';
import 'package:ui_plant/model/plant_model.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<PlantModel> pList = PlantData().pList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: 50,
          ),
          subTitleRow(subTitle: 'Recommended', shadowWidth: 110),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              height: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pList.length,
                  itemBuilder: (context, index) {
                    return listItem(
                        index: index,
                        width: 140,
                        height: 170,
                        plantModel: pList[index]);
                  }),
            ),
          ),
          subTitleRow(subTitle: 'Featured Plants', shadowWidth: 120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pList.length,
                  itemBuilder: (context, index) {
                    return listItem(
                        index: index,
                        width: 200,
                        height: 300,
                        plantModel: pList[index]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}

Widget subTitleRow({required String subTitle, required double shadowWidth}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 5,
              width: shadowWidth,
              color: Colors.grey.shade300,
            ),
            Positioned(
              bottom: -4,
              child: cTextStyle(
                  text: subTitle,
                  color: Colors.green.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 25,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green.shade800),
          child: Center(
              child:
                  cTextStyle(text: 'More', color: Colors.white, fontSize: 12)),
        )
      ],
    ),
  );
}

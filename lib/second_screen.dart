import 'package:flutter/material.dart';
import 'package:ui_plant/custom_style.dart';
import 'package:ui_plant/data.dart';
import 'package:ui_plant/model/plant_model.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SecondBody(),
    );
  }
}

class SecondBody extends StatelessWidget {
  SecondBody({
    super.key,
  });

  List<PlantModel> pList = PlantData().pList;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade100,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () => Navigator.of(context).pop(),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Icon(
                                  Icons.west,
                                  color: Colors.green.shade800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              customCardContainer(
                                  icon: Icons.wb_sunny_outlined),
                              customCardContainer(
                                  icon: Icons.water_drop_outlined),
                              customCardContainer(
                                  icon: Icons.thermostat_auto_outlined),
                              customCardContainer(icon: Icons.air),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: const Offset(-10, 10),
                              blurRadius: 7,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            child: Image.asset(
                              'images/${pList[index].image}.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            top: 30,
                            right: 10,
                            child: Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.green.shade900,
                              size: 30,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            child: SizedBox(
                              width: 100,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    cDotSizedBox(
                                        width: 25,
                                        height: 7,
                                        color: Colors.white),
                                    cDotSizedBox(
                                        width: 10,
                                        height: 7,
                                        color: Colors.grey.shade200),
                                    cDotSizedBox(
                                        width: 10,
                                        height: 7,
                                        color: Colors.grey.shade200),
                                    cDotSizedBox(
                                        width: 10,
                                        height: 7,
                                        color: Colors.grey.shade200),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 110,
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cTextStyle(
                            text: pList[index].title,
                            fontSize: 24,
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.bold),
                        cTextStyle(
                            text: pList[index].price,
                            fontSize: 18,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                    cTextStyle(
                        text: pList[index].country,
                        fontSize: 18,
                        color: Colors.grey.shade500)
                  ]),
            ),
          ),
          Row(children: [
            Expanded(
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30))),
                child: Center(
                    child: cTextStyle(
                        text: 'Buy Now', fontSize: 16, color: Colors.white)),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Center(
                    child: cTextStyle(
                        text: 'Description',
                        fontSize: 16,
                        color: Colors.green.shade900)),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget cDotSizedBox(
      {required double width, required double height, required Color color}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
    );
  }

  Container customCardContainer({required IconData icon}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, 5),
                blurRadius: 10,
                color: Colors.grey.shade400),
            const BoxShadow(
                offset: Offset(-15, -15), blurRadius: 25, color: Colors.white),
          ]),
      child: Icon(
        icon,
        color: Colors.green.shade700,
      ),
    );
  }
}

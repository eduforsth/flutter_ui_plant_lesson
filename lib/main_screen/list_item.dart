import 'package:flutter/material.dart';
import 'package:ui_plant/custom_style.dart';
import 'package:ui_plant/model/plant_model.dart';

Widget listItem({required int index, required double width, required double height, required PlantModel plantModel}){
  return Builder(
    builder: (context) {
      return GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('second', arguments: index),
          child: Container(
            width: width,
            height: height,
            margin: const EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 20),
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.grey.shade100,
              elevation: 7,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                        child: Image.asset(
                          'images/${plantModel.image}.jpg',
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity,
                        )),
                  ),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              cTextStyle(
                                text: plantModel.title.toUpperCase().length>8? '${plantModel.title.toUpperCase().substring(0, 8)}..': plantModel.title.toUpperCase() ,
                                fontSize: 13,
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.bold
                              ),
                              cTextStyle(
                                text: plantModel.price,
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              )
                            ],
                          ),
                          cTextStyle(
                              text: plantModel.country.toUpperCase(),
                              fontSize: 12,
                              color: Colors.grey.shade500)
                        ]),
                  )
                ],
              ),
            ),
          ),
        );
    }
  );
}

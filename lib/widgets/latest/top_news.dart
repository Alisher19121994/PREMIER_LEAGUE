import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_l/components/app_images.dart';

Widget topNews(){
  return Container(
    margin: const EdgeInsets.all(8),
    height: 250,
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(
          height: 110,
          child: Image(
            image: AssetImage(AppImages.mua),
          ),
        ),
        const SizedBox(height: 15,),
        Text('2023/2024 preview:  "Arsenal are stronger, they\'ll attack it all" ',
          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Text('Can the Gunners go one better and win the premier League" ',
          style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
      ],
    ),
  );
}
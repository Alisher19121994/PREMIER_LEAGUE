import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/app_images.dart';

Widget shortsNews(){
  return Card(
    child: Container(
      child: Column(
        children: [
          SizedBox(
            height: 110,
            child: Image(
              image: AssetImage(AppImages.icon),
            ),
          ),
          const SizedBox(height: 6,),
          Text('"FPL experts\'s top tips for 2023/2024" ',
            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
        ],
      ),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterecommerce/detailcomponent/detailbody.dart';


import 'package:flutterecommerce/homecomponent/test.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
      backgroundColor: Colors.blue[900],
      leading: Padding(
        padding: EdgeInsets.only(left: 20,top: 10),
        child: IconBtnWithCounter(press: (){print("pressed");},),
      ),
      elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: IconBtnWithCounter(press: (){print("pressed");},svgSrc:"assets/Cart Icon.svg",)
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(7, 8, 0, 0),
              child: IconBtnWithCounter(press: (){print("pressed");},svgSrc:"assets/Heart Icon.svg",numOfitem: 5,)
          )
        ],
      ),
      body: DetailBody(),


    );
  }

}



import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Ac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SingleChildScrollView(
         child: Column(
           children: [
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),
             f(),

           ],
         ),
       )
      ],
    );
  }
  Widget f()
  {
return  Container(
  child: SingleChildScrollView(
    child: Container(

      decoration: BoxDecoration(image: DecorationImage(image: ExactAssetImage('img4ins.png'))),
      child: Container(

        margin: EdgeInsets.only(right: 300,left: 200,top: 70,bottom: 0),
        padding: EdgeInsets.only(right: 250,left: 200,top:0),

        child: Row(

          children: [

            Container(
              child: Image(image: AssetImage('img4ins.png'),),),
            SizedBox(width:30,height: 25,),




            Padding(
              padding: EdgeInsets.only(bottom: 70),
              child: Row(children: [
                Text("ahmmmmmmmmmmmmmmmmmmmmmmmm"),

                Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: Transform.translate(child: IconButton(icon:Icon(Icons.access_time_sharp), onPressed:(){})
                    ,offset: Offset(110,0),
                  ),
                )

              ],),
            ),


          ],
        ),
      ),
    ),
  ),


);
  }
}



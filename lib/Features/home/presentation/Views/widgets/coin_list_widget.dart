import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class CoinListWidget extends StatelessWidget {
  const CoinListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorSelect.SColor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:16,horizontal: 24 ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Text("بيع"),
                Spacer(flex: 1,),
                Text("شراء"),
                Spacer(flex: 2,)
                ,
                Text("العملة"),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Divider(
                thickness: .5,
                color: Color(0xFF967373),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )
                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )
                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )
                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12 ),),

                  Text("30.24",style: TextStyle(color:Color(0xFFFEDC00),fontSize: 12)),

                  Row(
                    children: [
                      Text("دولار أمريكي / USD",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundImage:   AssetImage("Assets/images/USA_Flag.jpeg"),
                      )                    ],
                  ),


                ],
              ),
            ),



          ],),
        ),

      ),
    );
  }
}


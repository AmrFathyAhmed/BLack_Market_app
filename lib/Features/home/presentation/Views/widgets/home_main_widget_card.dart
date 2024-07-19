
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeMainWidgetCard extends StatelessWidget {
  const HomeMainWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 19,right: 19,top: 11,bottom: 15),
          child: Column
            (crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("Assets/images/Stroke 1.svg"),
                  SizedBox(width: 8,),
                  Text("دولار أمريكي / USD",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),),
                  SizedBox(width: 3,),
                  SvgPicture.asset("Assets/images/flag-egypt.svg")
                ],
              ),
              SizedBox(
                height:15.5 ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      Text("السوق السوداء",style: TextStyle(color: Color(0xFF828282),fontSize: 10 ),)
                      ,SizedBox(
                        height: 14,
                      ),
                      Text("40 ج.م",style: TextStyle(color: Color(0xFFBFA500),fontWeight: FontWeight.bold,fontSize: 10),)],
                  ),

                  Container(
                    height: 39,
                    width: 1,
                    color: Colors.grey.withOpacity(.7),
                  ),
                  Column(
                    children: [
                      Text("آخر تحديث",style: TextStyle(color: Color(0xFF828282),fontSize: 10 ),)
                      ,SizedBox(
                        height: 14,
                      ),
                      Text("منذ 15 دقيقة",style: TextStyle(color: Colors.black,fontSize: 10),)],
                  ),
                  Container(
                    height: 39,
                    width: 1,
                    color: Colors.grey.withOpacity(.7),
                  ),
                  Column(
                    children: [
                      Text("سعر البنك",style: TextStyle(color: Color(0xFF828282),fontSize: 10 ),)
                      ,SizedBox(
                        height: 14,
                      ),
                      Text("30.24 ج.م",style: TextStyle(color: Colors.black,fontSize: 10),)],
                  ),



                ],
              )

            ],),
        ),
      ),
    );
  }
}

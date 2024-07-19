


import 'package:flutter/material.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 95,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundImage:
                    AssetImage("Assets/images/Test-Bitcoin.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "BTC",
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// CustomHorizontalListView(),
//           CustomDropListItem(),
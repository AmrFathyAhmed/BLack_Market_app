import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/data/repo/gold_repo_impl.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-card.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class GoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Gold>>(
          future: GoldRepoImpl().fetchAllGold(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SizedBox(height:100,child: Center(child: CircularProgressIndicator(color: ColorSelect.PColor,)));
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final List<Gold> goldList = snapshot.data!;

              return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return CustomCard(
                goldName: goldList[index].name,
                sellPrice: goldList[index].price+goldList[index].price*.001,
                buyPrice: goldList[index].price, // Assuming buyPrice is the same as sellPrice for this example
              );
            }
              );}else{

    // This line ensures that a widget is always returned
    return Center(child: Text('No data available'));
            }
          },
        );
      }

  }


//
// class GoldWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: 8,
//       itemBuilder: (BuildContext context, int index) {
//         return FutureBuilder<List<Gold>>(
//           future: GoldRepoImpl().fetchAllGold(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator(color: ColorSelect.PColor,));
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (snapshot.hasData) {
//               final List<Gold> goldList = snapshot.data!;
//
//               return CustomCard(
//                 goldName: goldList[index].name,
//                 sellPrice: goldList[index].price+goldList[index].price*.001,
//                 buyPrice: goldList[index].price, // Assuming buyPrice is the same as sellPrice for this example
//               );
//             } else {
//               return Center(child: Text('No data available'));
//             }
//           },
//         );
//       },
//     );
//   }
// }

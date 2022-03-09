import 'package:flutter/material.dart';
import 'package:restaurant_flutter/model/product.dart';

final _lightColors = [
  Color(0xffececec),
  Color(0xfff7e9e9),

];

class ProductCardWidget extends StatelessWidget {
ProductCardWidget({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    /// Pick colors from the accent colors based on index
    final color = _lightColors[index % _lightColors.length];
    //final minHeight = getMinHeight(index);

    return Card(
      color: color,
      child: Container(
        height: 120,
        padding : const EdgeInsets.all(6.0),
        child: Row(

          children: <Widget>[

            Image(
              image: NetworkImage(product.img),
              width: 160,
              height: 160,

              fit: BoxFit.fill
            ),
            Expanded(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("  " + product.title, style: TextStyle( fontWeight: FontWeight.bold)),
                  //Text(product.description),
                  Text("  \$"+product.price, style: TextStyle(fontSize: 18))

                ],
              ),


            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[

                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.green,
                    size: 30.0,
                  )

                ],
              ),

            )

          ],
        ),
      ),
    );
  }

  /// To return different height for different widgets
  /*
  double getMinHeight(int index) {

    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }

   */
}
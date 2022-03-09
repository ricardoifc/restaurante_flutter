import 'package:flutter/material.dart';
import 'package:restaurant_flutter/db/products_database.dart';
import 'package:restaurant_flutter/model/product.dart';
import 'package:restaurant_flutter/screen/edit_product_screen.dart';


class ProductDetailPage extends StatefulWidget {
  final int productId;

  const ProductDetailPage({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late Product product;
  String precio = "";
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshProduct();
  }

  Future refreshProduct() async {
    setState(() => isLoading = true);

    this.product = await ProductsDatabase.instance.readProduct(widget.productId);
    precio = product.price;
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      actions: [editButton(), deleteButton()],
    ),
    body: isLoading
        ? Center(child: CircularProgressIndicator())
        : Padding(
      padding: EdgeInsets.all(12),
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          Image(
              image: NetworkImage(product.img),
              width: 200,
              height: 200,

              fit: BoxFit.fill
          ),
          Text(
            product.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),

          ),

          SizedBox(height: 8),
          Text(
            product.description,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),

          Expanded(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    color: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 10.0 ),

                    child: Text(("  \$$precio  ") ,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18))
                ),
              ElevatedButton(
                child: Text("Pedir plato"),
                style: ElevatedButton.styleFrom(

                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.black,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "");
                  print("Pedido con exito");
                  },
              )

              ],
            ),


          ),

        ],

      ),

    ),
  );

  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditProductPage(product: product),
        ));

        refreshProduct();
      });

  Widget deleteButton() => IconButton(
    icon: Icon(Icons.delete),
    onPressed: () async {
      await ProductsDatabase.instance.delete(widget.productId);

      Navigator.of(context).pop();
    },
  );
}
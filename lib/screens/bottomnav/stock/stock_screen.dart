import 'package:flutter/material.dart';
import 'package:flutter_stock/models/ProductModel.dart';
import 'package:flutter_stock/services/rest_api.dart';

class StockScreen extends StatefulWidget {

  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {

  // Call API Service
  CallAPI callAPI = CallAPI();

  // สร้าง Context
  // BuildContext context;

  @override
  void initState() {
    super.initState();
    callAPI = CallAPI();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        // Leading: icon ด้านซ้ายบน
        automaticallyImplyLeading: false,
        title: Text('Product List'),
        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/addproduct');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.add),
            )
          )
        ],
      ),
      body: Center(
        child: FutureBuilder(
          // API
          future: callAPI.getProduct(),
          // View
          builder: (BuildContext context, AsyncSnapshot<List<ProductModel>> snapshot) {
            if(snapshot.hasError) {
              return Center(
                child: Text('Something wrong with ${snapshot.error.toString()}'),
              );
            }else if(snapshot.connectionState == ConnectionState.done) {
              List<ProductModel>? products = snapshot.data;
              return _buildListView(products);
            }else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
        )
      )
    );
  }

  Widget _buildListView(List<ProductModel>? products) {
    return ListView.builder(
      itemCount: products!.length,
      itemBuilder: (context, index) {
        // Load Model
        ProductModel product = products[index];

        return Card(
          child: InkWell(
            onTap: (){
              print('Tab on Card');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // รูปภาพ
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          child: Image.network(product.productImage!),
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // TextOverflow: ตัดคำถ้ายาวเกิน
                            Text(product.productName!, style: TextStyle(fontSize: 24), overflow: TextOverflow.ellipsis,),
                            Text(product.productBarcode!, style: TextStyle(fontSize: 18), overflow: TextOverflow.ellipsis,),
                            Text(product.productPrice!, style: TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis,)
                          ],
                        )
                      )
                      // กล่องข้อความ
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          print('Edit');
                        }, 
                        child: Text('Edit', style: TextStyle(color: Colors.blue))
                      ),
                      FlatButton(
                        onPressed: (){
                          print('Delete');
                        }, 
                        child: Text('Delete', style: TextStyle(color: Colors.red))
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
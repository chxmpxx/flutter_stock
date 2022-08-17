import 'dart:convert';
import 'package:flutter_stock/models/ProductModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stock/utils/constants.dart';

class CallAPI {
  
  _setHeaders() => {
    'Content-type': 'application/json',
    'Accrpt': 'application/json'
  };

  // async* จะ return ค่าเป็นสตรีม ส่วน async จะ return เป็น future
  postData(data, apiURL) async {
    var fullURL = Uri.parse(baseURLAPI + apiURL);
    // await เป็นการคอย ถ้าข้อมูลที่ฝั่ง api ยังไม่หมด ก็จะยังไม่มีการพ่นข้อมูลออกมา
    return await http.post(
      fullURL,
      body: jsonEncode(data),
      headers: _setHeaders()
    );
  }

  // CRUD Product
  // GET: all product
  Future<List<ProductModel>> getProduct() async {
    final response = await http.get(Uri.parse(baseURLAPI + "products"), headers: _setHeaders());
    if(response.statusCode == 200) {
      return productFromJson(response.body);
    }
    throw Exception('Fail');
  }

  // POST: Create Product
  Future<bool> createProduce(ProductModel data) async{
    final response = await http.post(Uri.parse(baseURLAPI + "products"), headers: _setHeaders(), body: productToJson(data));
    if(response.statusCode == 200) {
      return true;
    }
    return false;
  }

    // Update Products
  Future<bool> updateProduct(ProductModel data) async {
    final response = await http.post(Uri.parse(baseURLAPI + "products/${data.id}"), headers: _setHeaders(), body: productToJson(data));
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  // Delete Products
  Future<bool> deleteProduct(int id) async {
    final response = await http.post(Uri.parse(baseURLAPI + "products/$id"), headers: _setHeaders());
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

}
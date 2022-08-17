import 'package:flutter/material.dart';

class AddProduceScreen extends StatefulWidget {
  AddProduceScreen({Key? key}) : super(key: key);

  @override
  State<AddProduceScreen> createState() => _AddProduceScreenState();
}

class _AddProduceScreenState extends State<AddProduceScreen> {

  final formKey = GlobalKey<FormState>();
  String? productName, productDetail, productBarcode, productQty, productPrice, productImage, productCategory, productStatus;

  Widget produceNameText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email)
        // ใส่ icon ข้างใน
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        // hintText: 'Produce Name',
        // hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Produce Name',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        // ให้ตัวหนังสือไม่ชิด
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Name can't empty";
        }return null;
      },
      onSaved: (value) {
        productName = value;
      },
    );
  }

  Widget produceDetailText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Detail',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Detail can't empty";
        }return null;
      },
      onSaved: (value) {
        productDetail = value;
      },
    );
  }

  Widget produceBarcodeText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Barcode',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Barcode can't empty";
        }return null;
      },
      onSaved: (value) {
        productBarcode = value;
      },
    );
  }

  Widget produceQtyText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Qty',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Qty can't empty";
        }return null;
      },
      onSaved: (value) {
        productQty = value;
      },
    );
  }

  Widget producePriceText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Price',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Price can't empty";
        }return null;
      },
      onSaved: (value) {
        productPrice = value;
      },
    );
  }

  Widget produceImageText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Image',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Image can't empty";
        }return null;
      },
      onSaved: (value) {
        productImage = value;
      },
    );
  }

  Widget produceCategoryText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Category',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Category can't empty";
        }return null;
      },
      onSaved: (value) {
        productCategory = value;
      },
    );
  }

  Widget produceStatusText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24),
        labelText: 'Produce Status',
        labelStyle: TextStyle(fontSize: 20, color: Colors.teal),
        contentPadding: new EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        errorStyle: TextStyle(fontSize: 16)
      ),
      validator: (value) {
        if(value!.isEmpty) {
          return "Product Status can't empty";
        }return null;
      },
      onSaved: (value) {
        productStatus = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
      ),
      body: GestureDetector(
        onTap: () {
          // กดที่ว่างแล้วปิดคีย์บอร์ดให้
          FocusScope.of(context).unfocus();
        },
        // เอา Form มาครอบแล้วใส่ key เพื่อทำ validate
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceNameText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceDetailText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceBarcodeText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceQtyText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producePriceText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceImageText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceCategoryText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: produceStatusText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: RaisedButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print('validate success');
                      print('productName: $productName');
                    }
                  },
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Submit', style: TextStyle(fontSize: 24, color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class SearchPage extends StatelessWidget {
   SearchPage({Key? key}) : super(key: key);

    final productRef = FirebaseFirestore.instance.collection('productCollection');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon:
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.clear)),
                hintText: 'Search..',
                border: InputBorder.none),
          ),
        ),
      ),
      // body: StreamBuilder(
      //   stream: productRef.snapshots(),
      //   builder: (context, snapshot) {
      //   if (snapshot.hasData) {
      //     final products = snapshot.data!.docs;
      //     print(products);
      //     return  GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       childAspectRatio: 2/3
      //     ),
      //     itemCount: products.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return ProductCard(product: products[index],);
      //     });
          
      //   } else {
      //     return Center(child: CircularProgressIndicator());
      //   }
      // },),
    );
  }
}

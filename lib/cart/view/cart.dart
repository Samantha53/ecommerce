import 'package:ecommerce_user/cart/place_order/place_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Center(
            child: Column(
              children: [
                Text(
                  'YOUR CART',
                  style:
                      GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
                ),
                Text(
                  '3 products',
                  style:
                      GoogleFonts.workSans(textStyle: TextStyle(fontSize: 15)),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLP6apBQpPrfVblCGbjZlHIztansQTk6zqow&usqp=CAU')),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'White unisex sneakers',
                          style: GoogleFonts.workSans(
                              textStyle: TextStyle(fontSize: 15)),
                        ),
                        Text(
                          '900 rs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                  child: IconButton(onPressed: () {
                                    
                                  }, icon: Icon(FontAwesomeIcons.minus,
                                size: 10,
                                color: Colors.black,))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('1'),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                  child: IconButton(onPressed: () {
                                    
                                  }, icon: Icon(
                                FontAwesomeIcons.plus,
                                size: 10,
                                color: Colors.black,
                              ))),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRduP6_yI1w2qzo8ghRrNyQqoztXrBQrBltDw&usqp=CAU')),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Black Leather Biker Boots',
                          style: GoogleFonts.workSans(
                              textStyle: TextStyle(fontSize: 15)),
                        ),
                        Text(
                          '4,800 rs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                  child: IconButton(onPressed: () {
                                    
                                  }, icon: Icon( FontAwesomeIcons.minus,
                                size: 10,
                                color: Colors.black,))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('1'),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Center(
                                  child: IconButton(onPressed: () {
                                    
                                  }, icon: Icon( FontAwesomeIcons.plus,
                                size: 10,
                                color: Colors.black,))),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 350),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total M.R.P',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('5,700/-')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery fee',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('99/-')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('5,799/-')
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceOrder(),));
                  }, child: Text('Place Order')),
                )
              ],
            ),
          ),
        ));
  }
}

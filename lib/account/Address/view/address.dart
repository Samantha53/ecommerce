import 'package:ecommerce_user/account/Address/add_address/add_address.dart';
import 'package:ecommerce_user/account/Address/edit_address/edit_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Address',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
              )),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'NAME',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'SERVICE RD, VIKAS NAGAR,MARADU',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'SKYLINES BULIDING',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'ERNANKULAM 682034',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'KERALA,INDIA',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '+91 9537485665',
                    style: GoogleFonts.workSans(
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditAddress(),));
                },
                child: Text(
                  'Edit',
                ),
              ),
              SizedBox(
                height: 450,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddAddress(),
                          ));
                    },
                    child: Text('Add new address')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

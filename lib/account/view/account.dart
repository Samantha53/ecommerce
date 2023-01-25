import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_user/account/Address/address.dart';
import 'package:ecommerce_user/account/Orders/orders.dart';
import 'package:ecommerce_user/account/manage_account/view/manage_account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Account extends StatelessWidget {
   Account({super.key});

   final CollectionReference _userDetails =
      FirebaseFirestore.instance.collection('user_details');
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _userDetails.doc(_auth.currentUser!.uid).get(),
         builder: (BuildContext context, AsyncSnapshot snapshot){
          
         }
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'NAME',
                style: GoogleFonts.workSans(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Text('name@gmail.com'),
              SizedBox(
                height: 100,
              ),
              ListTile(
                title: Text(
                  'Manage account',
                  style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
                ),
                trailing: Icon(LineAwesomeIcons.angle_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageAccount(),
                      ));
                },
              ),
              ListTile(
                title: Text(
                  'Orders',
                  style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
                ),
                trailing: Icon(LineAwesomeIcons.angle_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Orders(),
                      ));
                },
              ),
              ListTile(
                title: Text(
                  'Address',
                  style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
                ),
                trailing: Icon(LineAwesomeIcons.angle_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Address(),
                      ));
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
                ),
                trailing: Icon(LineAwesomeIcons.angle_right),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

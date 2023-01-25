import 'package:ecommerce_user/account/manage_account/change_password/change_password.dart';
import 'package:ecommerce_user/account/manage_account/change_username/change_username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Manage your account',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Change Username',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              trailing: Icon(LineAwesomeIcons.angle_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangeUsername(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                'Change Password',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              trailing: Icon(LineAwesomeIcons.angle_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePassword(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

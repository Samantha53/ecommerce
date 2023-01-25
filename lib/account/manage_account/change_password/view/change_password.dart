import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                'Change Password',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(height: 30,),
             TextField(
                  cursorColor: Colors.black,
                   decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter current password'),
                ),
                SizedBox(height: 20,),
                 TextField(
                  cursorColor: Colors.black,
                   decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter new password'),
                ),
                SizedBox(height: 20,),
                 TextField(
                  cursorColor: Colors.black,
                   decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Confirm new password'),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            ),
                  onPressed: () {
                  
                }, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}

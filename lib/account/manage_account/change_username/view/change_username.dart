import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeUsername extends StatelessWidget {
   ChangeUsername({super.key});

  TextEditingController nameController = TextEditingController();

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
                'Change Username',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
              )),
              SizedBox(height: 30,),
              TextField(
                controller: nameController,
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                         focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter new Username'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            ),
                onPressed: () {
                
              }, child: Text('Save'))
            ],
          ),
        ));
  }
}

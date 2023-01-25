import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_user/account/account.dart';
import 'package:ecommerce_user/cart/cart.dart';
import 'package:ecommerce_user/home/view/home.dart';
import 'package:ecommerce_user/kids_products/view/kids_products.dart';
import 'package:ecommerce_user/men_products/men_products.dart';
import 'package:ecommerce_user/notifications/view/notification.dart';
import 'package:ecommerce_user/searchpage/view/search_page.dart';
import 'package:ecommerce_user/wishlist/wishlist.dart';
import 'package:ecommerce_user/women_products/view/women_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    Home(),
    SearchPage(),
    Cart(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'CATEGORIES',
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(fontSize: 25, color: Colors.white)),
              ),
            ),
            ListTile(
              title: Text(
                'Woman',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WomenProducts(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                'Man',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenProducts(),
                    ));
              },
            ),
            ListTile(
              title: Text(
                'Kids',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KidsProducts(),
                    ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'SHOETOPIA',
          style: GoogleFonts.cinzel(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ));
              },
              icon: Icon(LineAwesomeIcons.bell)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wishlist(),
                    ));
              },
              icon: Icon(LineAwesomeIcons.heart))
        ],
      ),

      body: Center(  child: _pages[_selectedIndex],
),
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.search),
            label: 'Search',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.shopping_bag),
            label: 'Cart',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            label: 'Account',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          print(value);
          if (value == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ));
          } else {
            setState(() {
              _selectedIndex = value;
            });
          }
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

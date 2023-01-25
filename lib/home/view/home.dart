import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../kids_products/view/kids_products.dart';
import '../../men_products/view/men_products.dart';
import '../../women_products/view/women_products.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(

                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUDMw5oW8TOZzg8Yu_tOJM_IuW5MigmioQMg&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQErDDJHdfigmNIcAJ9OpkIU7ERLIhCW7kZzw&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUFuOmoiYnuYJ5vtgnJbBK90Uj22kYCq2KGQ&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i0.wp.com/www.stylishworld.in/wp-content/uploads/2020/03/unnamed.jpg?fit=512%2C410&ssl=1'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFTrc47GusY9W1ygg96U3A5IuUs92mQ8zSkhwMaXRmJZfDbI69buMAQ2A7MhGz212ir7o&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 250,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WomenProducts(),
                        ));
                  },
                  child: CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4WRrkpHhSpc5k4I_KVC-sIQKXwsBSbGqszQ&usqp=CAU',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenProducts(),
                        ));
                  },
                  child: CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: Image.network(
                        'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2020/02/Types-of-Shoes-for-Men-Intro.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KidsProducts(),
                        ));
                  },
                  child: CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp7dv9c_9g4930kzNYeOB4I0TjI90u9sEfwg&usqp=CAU',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Woman',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              Text(
                'Men',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
              Text(
                'Kids',
                style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Best selling',
              style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 25)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(),
                          borderRadius: BorderRadius.vertical()),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOcAo3ive7B5x58lZ9TWovoSFbF28uGbGZRQ&usqp=CAU'),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Men Formal Shoes',
                  style: GoogleFonts.workSans(textStyle: TextStyle(fontSize: 17)),
                ),
                 Text(
              '2000/-',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
              ],
            ),
          ),
         
        ],
      ),
     
    );
  }
}
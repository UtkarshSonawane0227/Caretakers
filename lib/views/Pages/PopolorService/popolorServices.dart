import 'package:caretaker/consts/utils/color.dart';
import 'package:caretaker/views/HomeMenu/SideMenu/drawerScree.dart';
import 'package:caretaker/views/Pages/PopolorService/popolorWorkInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class PopolorServiceScreen extends StatefulWidget {
  const PopolorServiceScreen({super.key});

  @override
  State<PopolorServiceScreen> createState() => _PopolorServiceScreenState();
}

class _PopolorServiceScreenState extends State<PopolorServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Popolar Services',
          style: TextStyle(
              fontFamily: 'Syne-Medium',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Text('24 Services',
              style: TextStyle(
                  fontFamily: 'Mulish-Medium',
                  fontSize: 13,
                  fontWeight: FontWeight.w500))
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              physics: ScrollPhysics(),
              padding: EdgeInsets.only(right: 35, left: 35, top: 20),
              children: [
                ProductItem(
                  imageUrl: 'assets/images/Services/carpenter.jpg',
                  title: 'Car Penter',
                  price: 3000,
                  rating: 5.8,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PopolorSecondScreen()));
                    print('car Penter');
                  },
                  timeDuration: '2hr30min',
                ),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/AcService.jpg',
                    timeDuration: '1Day-2Day',
                    title: 'AC \nRepairer',
                    price: 5600,
                    rating: 4.8,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/fruitsShopping.jpg',
                    timeDuration: '2hr',
                    title: 'Vegitables \n Trasnportation',
                    price: 500,
                    rating: 5.1,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/gasFitter.png',
                    timeDuration: '1Day-2Day',
                    title: 'GasLine \nSerives',
                    price: 4000,
                    rating: 4.8,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/hairServices.jpg',
                    timeDuration: '2hr',
                    title: 'Beauty Paller',
                    price: 500,
                    rating: 4.8,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/roomcleaing.jpg',
                    timeDuration: '2hr',
                    title: 'RoomCleaing',
                    price: 4000,
                    rating: 4.8,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/salonPaller.jpg',
                    timeDuration: '1hr',
                    title: 'MensPaller',
                    price: 300,
                    rating: 5.9,
                    onPressed: () {}),
                20.heightBox,
                ProductItem(
                    imageUrl: 'assets/images/Services/serviceProvider.jpg',
                    timeDuration: '2hr-3hr',
                    title: 'SpecialCooked',
                    price: 800,
                    rating: 5.9,
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String timeDuration;
  final double price;
  final double rating;
  final VoidCallback onPressed;

  const ProductItem({
    Key? key,
    required this.imageUrl,
    required this.timeDuration,
    required this.title,
    required this.price,
    required this.rating,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(right: 5, left: 5, top: 5),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey),
          color: Color.fromARGB(255, 233, 233, 233),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Container(
              // width: 170,
              width: MediaQuery.of(context).size.width * 1,
              // height: 150,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 16.0),
            // Text and Price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Syne-Medium',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                    Text(timeDuration,
                        style: TextStyle(
                            fontFamily: 'Mulish-Medium',
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    5.widthBox,
                    Text(
                      '\$$price',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Mulish-Medium',
                          color: Colors.green,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                    ),
                    Text(
                      ' $rating',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

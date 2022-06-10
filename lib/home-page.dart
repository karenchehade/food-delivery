import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/home-controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List categories = ['Chinese', 'Indian', 'Italian', 'American'];
    var popItems = [
      {
        "name": "Greek Pizza",
        "price": "15",
        "rating": "4.7",
        "calories": "229",
        "duration": "30",
        "img": "assets/images/img5.jpg",
      },
      {
        "name": "Italian Pizza",
        "price": "25",
        "rating": "5.00",
        "calories": "548",
        "duration": "45",
        "img": "assets/images/img3.jpg",
      },
      {
        "name": "Calfornia Pizza",
        "price": "20",
        "rating": "3.2",
        "calories": "229",
        "duration": "20",
        "img": "assets/images/img5.jpg",
      },
      {
        "name": "kiko's Pizza",
        "price": "15",
        "rating": "4.7",
        "calories": "229",
        "duration": "15",
        "img": "assets/images/img3.jpg",
      }
    ];
    final Homecontroller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('chattak'),
        backgroundColor: Colors.white,
      ),
      body: Container(
          // color: Colors.white,
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: width,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: const Image(
                image: AssetImage('assets/images/delivery.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
              child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                          child: GetBuilder<HomeController>(
                        builder: (_) => Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Homecontroller.clickedIndex == i
                                  ? Colors.red
                                  : Colors.white,
                            ),
                            child: Column(
                              children: [
                                IconButton(
                                  iconSize: 100,
                                  icon: SvgPicture.asset(
                                    "assets/icons/pizza11.svg",
                                  ),
                                  onPressed: () {
                                    Homecontroller.changeBgColor(i);
                                  },
                                ),
                                Text(categories[i]),
                              ],
                            )),
                      ));
                    }),
              ),
            ],
          )),
          Container(
            child: Column(children: [
              Container(
                  child: const Text(
                'Popular Item',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: popItems.length,
                  itemBuilder: (_, i) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/detail/', arguments: {
                              'name': popItems[i]['name'].toString(),
                              'price': popItems[i]['price'].toString(),
                              'rating': popItems[i]['rating'].toString(),
                              'calories': popItems[i]['calories'].toString(),
                              'duration': popItems[i]['duration'].toString(),
                              'img': popItems[i]['img'].toString(),
                            });
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.all(10),
                            child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage(popItems[i]['img'].toString())),
                          ),
                        ),
                        // const SizedBox(width: 10,),
                        Column(
                          children:[
                            Text(popItems[i]['name'].toString()),
                            Text(   '\$' + popItems[i]['price'].toString() + '.00'),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Container(
                          child: const Center(
                            child: Icon(
                              Icons.save_alt_sharp,
                              color: Color(0xFF69c5df),
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ]),
          ),
        ],
      )),
    );
  }
}

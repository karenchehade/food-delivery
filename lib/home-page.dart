import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/home-controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List categories = ['Chinese', 'Indian', 'Italian', 'American'];
    // bool pressAttention = true;
    // var clickedIndex = -1;
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
                  itemCount: categories.length,
                  itemBuilder: (_, i) {
                    return Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                          child: const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/img3.jpg')),
                        ),
                        // const SizedBox(width: 10,),
                        Column(
                          children: const [
                            Text('Greek pizza'),
                            Text('\$15.00'),
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

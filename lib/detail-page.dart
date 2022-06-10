import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/detail-controller.dart';
import 'package:food/home-page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final detailController = Get.put(DetailController());
    int one = 1;
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('chattak'),
        //   backgroundColor: Colors.white,

        // ),
        body: GetBuilder<DetailController>(
      builder: (_) => Container(
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                  height: height / 2 + 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(
                      image: AssetImage('assets/images/img5.jpg'),
                    ),
                  )),
              Container(
                child: IconButton(
                  onPressed: () => Get.to(() => MyHomePage()),
                  icon: const Icon(Icons.home_outlined),
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 30,
                top: height / 2 - 40,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: Text(
                          Get.arguments['name'],
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          detailController.price != 1
                              ? Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  '\$' +
                                      detailController.price.toString() +
                                      '.00',
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  '\$' + Get.arguments['price'] + '.00',
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                          const SizedBox(
                            width: 150,
                          ),
                          Row(children: [
                            Container(
                              height: 25,
                              width: 25,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.all(0),
                                ),
                                onPressed: () {
                                      if (detailController.quantity > 1) {
                                    detailController.removeQuantity();
                                    detailController.updatePrice(
                                        int.parse(Get.arguments['price']),
                                        int.parse(Get.arguments['calories']));
                                  } else {
                                    Get.defaultDialog(
                                        title: "hajj tekolll",
                                        middleText:
                                            "FlutterDevs is a protruding flutter app development company with "
                                           ,
                                        backgroundColor: Color.fromARGB(255, 245, 101, 90),
                                        titleStyle:
                                            TextStyle(color: Colors.black54),
                                        middleTextStyle:
                                            TextStyle(color: Colors.white),
                                        radius: 30);
                                  }
                                 
                                },
                                child: const Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Text(
                                  detailController.quantity.toString(),
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              height: 25,
                              width: 25,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.all(0),
                                ),
                                onPressed: () {
                               detailController.addQuantity();
                                  detailController.updatePrice(
                                      int.parse(Get.arguments['price']),
                                      int.parse(Get.arguments['calories']));
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]), // ignore: avoid_unnecessary_containers
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(15),
                                textStyle: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 50,
                            )),
                      ),
                      Text(Get.arguments['rating'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text('Rating',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(15),
                                textStyle: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            child: const Icon(
                              Icons.local_fire_department,
                              color: Colors.orangeAccent,
                              size: 50,
                            )),
                      ),
                      detailController.calorie != 0
                          ? Text(detailController.calorie.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                          : Text(
                              Get.arguments['calories'],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                      const Text('Calories',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(15),
                                textStyle: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            child: const Icon(
                              Icons.timer_rounded,
                              color: Colors.red,
                              size: 50,
                            )),
                      ),
                      Text(Get.arguments['duration'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text('Duration',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal)),
                    ],
                  ),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

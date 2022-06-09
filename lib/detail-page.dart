import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('chattak'),
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
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
                        child: const Text(
                          'California Pizza',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 14.00',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(0),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10),
                                  child: const Text(
                                    '2',
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
                                  onPressed: () {},
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ]),
                          )
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
                      const Text('4.7',
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
                      const Text('228',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
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
                      const Text('30',
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
              padding:const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', style: TextStyle(fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }
}

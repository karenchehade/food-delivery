import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List categories = ['Chinese', 'Indian', 'Italian', 'American'];
    Color color = Colors.white;
    bool pressAttention =true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('chattak'),
        backgroundColor: Colors.white,
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: width,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: const Image(
                image: AssetImage('images/img1.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              child: Column(
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                color: color,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                        onTap: () =>  setState(() => pressAttention = !pressAttention),
                        child: Container(
                          width: 120,
                          height: 120,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: const DecorationImage(
                                image: AssetImage('images/icon1.png') ),
                                // backgroundBlendMode: BlendMode.saturation ,
                                color: Colors.black.withOpacity(0.5)
                          //  color: pressAttention ? Colors.grey : Colors.blue,
                          ),
                          child: Text(categories[i]),
                        ),
                      );
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
                              backgroundImage: AssetImage('images/img3.jpg')),
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

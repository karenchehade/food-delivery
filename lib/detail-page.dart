import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('chattak'),
        backgroundColor: Colors.white,
      ), 
      body: Container(
        child: Column(
          children: [
            Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: const Image(
                image: AssetImage('assets/images/img5.jpg'),
              ),
            )),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              
              decoration: BoxDecoration(
               border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  const Text('California Pizza'),
                  Row(
                    children: [
                      const Text('\$ 14.00'),
                      const SizedBox(width: 20,),
                      Container(
                        child: Row(children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('-'),
                          ),
                          const Text('2'), OutlinedButton(
                            onPressed: () {},
                            child: const Text('+'),
                          ),
                        ]),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

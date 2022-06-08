import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'detail-page.dart';
import 'home-page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // canvasColor: Colors.transparent,
      ),
       initialRoute: "/",
      getPages: [
       GetPage(name: "/", page: ()=> MyHomePage()),
       GetPage(name: "/detail",page :()=> DetailPage()),
      ],
    );
  }
}


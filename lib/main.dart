import 'package:flutter/material.dart';
import 'prodect.dart';
import 'Pocket.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List person = [
    prodect("Brwa", "1 h / 20 \$", "asset/img/1.jpg", "PHP","Brwa@gmail.com"),
    prodect("Sarbast", "1 d / 20 \$", "asset/img/2.jpg", "Jison","Sarbast@gmail.com"),
    prodect("Jawhar", "1 h / 20 \$", "asset/img/3.jpg", "java","Jawhra@gmail.com"),
    prodect("Sara", "1 h / 20 \$", "asset/img/4.jpg", "JS","Sara@gmail.com"),
    prodect("Shnyar", "1 h / 10 \$", "asset/img/5.jpg", "C++","Shnyar@gmail.com"),
    prodect("Chinaz", "1 w / 20 \$", "asset/img/6.jpg", "C#","Chinaz@gmail.com"),
    prodect("Lida", "1 y / 20 \$", "asset/img/7.jpg", "Python","Lida@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                       BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), 
                     ],
                  ),
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('asset/img/w.jpg', width: 300)),
                  ),
                ),
              ],
            ),
            Text(
              "Find Free Lancer",
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Kurdish',
                color: Colors.black,
              ),
            ),
           
                 Column(
                  
                      children:person
                        .map((all) => Pocket(all, () {
                              setState(() {
                                person.remove(all);
                              });
                            }))
                        .toList(),
                   
                  ),
               ],
            
        ),
      ),
    );
  }
}

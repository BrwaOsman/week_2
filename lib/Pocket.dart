import 'package:firtsapp/Profile.dart';
import 'package:flutter/material.dart';
import 'Profile.dart';
class Pocket extends StatelessWidget {
  var v;
  Function delete;
  Pocket(this.v, this.delete);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
              boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ), 
              ]
                   ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>
            Profile(image: v.img,name:v.name,salary:v.salary,skil:v.skile,email: v.email,))),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "${v.img}",
                    width: 65,
                    fit: BoxFit.fitWidth,
                    semanticLabel: 'Dass mascot',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${v.name}",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Kurdish',
                            color: Colors.black),
                      ),
                      Text(
                        "${v.salary}",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kurdish',
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "${v.skile}",
            style: TextStyle(
                fontSize: 20, fontFamily: 'english', color: Colors.black),
          ),
          FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text(""))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // const Profile({ Key? key }) : super(key: key);

  final String image;
  final String name;
  final String salary;
  final String skil;
  final String email;

  const Profile({this.image, this.name, this.salary, this.skil, this.email});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Container(
                  height: 300.0,
                  // width: 500.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    widget.name,
                    style: TextStyle(fontSize: 24.0, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: Text(
                    widget.skil,
                    style: TextStyle(fontSize: 14.0, color: Colors.black38),
                  ),
                ),
                // Text(widget.email,style: TextStyle(),),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Project",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      "Experience",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      "Raiting",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "10",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "2 yr",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "0.3",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores alias incidunt voluptate, perferendis ducimus aut eligendi similique non dolorem. Quis, eligendi unde? Maiores cum accusamus culpa quibusdam. Voluptates,",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 80,top: 30),
                 child: FloatingActionButton.extended(
                  //  elevation: 2.0,
                 backgroundColor: Colors.greenAccent,
                   label: const Text("Book Appointment",
                   style: TextStyle(color: Colors.black),),
                   onPressed: () {},
                  ),
               ),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Home.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          ClipRRect(
            child: Image.asset(
              "assets/images/image4.png",
              height: 470,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Container(
                  margin: EdgeInsets.only(left: 25, top: 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[700],
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(40, 50),
                      ),
                      onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()),
                        );},
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      ))))
        ]),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Coffee",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star, color: Colors.yellow[700], size: 25),
                  Text("4.4",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                  Text("\t\t429 reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey[400])),
                ],
              ),
              Text("New Cairo, Egypt",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/coffee.jpg",
                          height: 50,
                          color: Colors.lime[800],
                        ),
                        Text(
                          "Coffee",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/milk.jpg",
                          height: 50,
                          color: Colors.lime[800],
                        ),
                        Text(
                          "Milk",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                    height: 80,
                    width: 80,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child:
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[700],
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(270, 60),
                    ),
                    onPressed: () {},
                    child: Text("Order Now",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
            ],
          ),
          width: 400,
          height: 259.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
        )
      ],
    ));
  }
}

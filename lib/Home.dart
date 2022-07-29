import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buildClipRRect(String s) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        s,
        height: 160.0,
        width: 160.0,
        fit: BoxFit.fill,
      ),
    );
  }

  buildIconClipRRect(String s) {
    return ClipRRect(
      child: SvgPicture.asset(
        s,
        height: 30.0,
        width: 30.0,
      ),
    );
  }

  Widget buildElevatedButton(String s, double brdr, double x, double y) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.yellow[700],
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(brdr)),
          minimumSize: Size(x, y),
        ),
        onPressed: () {},
        child: SvgPicture.asset(
          s,
          height: 30,
          width: 30,
        ));
  }

  Widget buildColumn(Color? c, s) {
    return Column(children: [
      Row(
        children: [
          Text(
            "Coffee",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 23,
                color: c,
                shadows: s),
          ),
        ],
      ),
      Row(children: [
        Icon(
          Icons.star,
          color: Colors.yellow[700],
          size: 25,
          shadows: s,
        ),
        Text(
          "4.4",
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Text(
          " \t429 reviews",
          style: TextStyle(color: Colors.grey[500], fontSize: 18, shadows: s),
        )
      ]),
      Row(
        children: [
          Text(
            "New Cairo, Egypt",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: c,
                shadows: s),
          ),
        ],
      ),
    ]);
  }

  Widget buildStack(String s, String i) {
    return Stack(children: [
      buildClipRRect(s),
      Container(
          margin: EdgeInsets.only(
            left: 140,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: SvgPicture.asset(
            i,
            color: Colors.black,
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30),
            child: Row(
              children: [
                Text(
                  "Coffee first.\nSchemes later.",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Container(
                    margin: EdgeInsets.only(left: 55),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/user.png'),
                      width: 60,
                      height: 60,
                      fit: BoxFit.fill,
                    ))
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: SizedBox(
                    width: 240,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18))),
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(left: 25, top: 15),
                  child: buildElevatedButton(
                      'assets/icons/search.svg', 20.0, 60.0, 60.0)),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: Text("Coffee Products",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25)))
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: buildClipRRect("assets/images/image4.png")),
                    Container(
                        margin: EdgeInsets.only(
                          left: 145,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/heart.svg",
                          color: Colors.yellow[700],
                        ))
                  ]),
                  SizedBox(
                    width: 12,
                  ),
                  buildStack(
                      "assets/images/image1.png", "assets/icons/heart.svg"),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: buildColumn(
                        Colors.cyan[900],
                        [
                          Shadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: buildColumn(Colors.black87, null)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  buildStack(
                      "assets/images/image3.png", "assets/icons/heart.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  buildStack(
                      "assets/images/image2.png", "assets/icons/heart.svg"),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 40, top: 6),
                  child: Row(
                    children: [
                      buildElevatedButton(
                          'assets/icons/home.svg', 30.0, 80.0, 60.0),
                      SizedBox(
                        width: 40,
                      ),
                      buildIconClipRRect('assets/icons/heart.svg'),
                      SizedBox(
                        width: 40,
                      ),
                      buildIconClipRRect('assets/icons/bookmark.svg'),
                      SizedBox(
                        width: 40,
                      ),
                      buildIconClipRRect('assets/icons/user.svg')
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
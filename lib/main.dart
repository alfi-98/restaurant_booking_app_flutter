import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RestaurantPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navBarItem = ["Recommended", "Popular", "Top Rates", "Liked"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0FFFF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 27,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 27,
                  color: Colors.black,
                ))
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Your \nResturaunt",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1.5,
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.blue),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: 18,
                                  )
                                ],
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 40,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: navBarItem.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              color: Color(0xFFADD8E6),
                            ),
                            child: Text(
                              navBarItem[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF0F52BA),
                              ),
                            ),
                          );
                        },
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 350,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.blue),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 0.4,
                                alignment: FractionalOffset.bottomCenter,
                                child: Container(
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Text(
                                  //     "Madchef",
                                  //     style: TextStyle(
                                  //         color: Color(0xFF000080),
                                  //         letterSpacing: 1.5,
                                  //         fontSize: 17,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),

                                  // ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFADD8E6),
                                  ),

                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.all(10)),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Madchef",
                                          style: TextStyle(
                                              color: Color(0xFF000080),
                                              letterSpacing: 1.5,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            "4 Seats Available",
                                            style: TextStyle(
                                                color: Color(0xFF000080),
                                                letterSpacing: 1.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 350,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color(0xFF9FE2BF)),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 0.4,
                                alignment: FractionalOffset.bottomCenter,
                                child: Container(
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Text(
                                  //     "Madchef",
                                  //     style: TextStyle(
                                  //         color: Color(0xFF000080),
                                  //         letterSpacing: 1.5,
                                  //         fontSize: 17,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),

                                  // ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF89CFF0),
                                  ),

                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.all(10)),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Cheez",
                                          style: TextStyle(
                                              color: Color(0xFF000080),
                                              letterSpacing: 1.5,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            "4 Seats Available",
                                            style: TextStyle(
                                                color: Color(0xFF000080),
                                                letterSpacing: 1.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 350,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.blue),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 0.4,
                                alignment: FractionalOffset.bottomCenter,
                                child: Container(
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Text(
                                  //     "Madchef",
                                  //     style: TextStyle(
                                  //         color: Color(0xFF000080),
                                  //         letterSpacing: 1.5,
                                  //         fontSize: 17,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),

                                  // ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFADD8E6),
                                  ),

                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.all(10)),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Madchef",
                                          style: TextStyle(
                                              color: Color(0xFF000080),
                                              letterSpacing: 1.5,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 17,
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            "4 Seats Available",
                                            style: TextStyle(
                                                color: Color(0xFF000080),
                                                letterSpacing: 1.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
//Near You 1

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Near You",
                        style: TextStyle(
                            color: Color(0xFF000080),
                            letterSpacing: 1.5,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  nearWidget("ch", "Cheez "),
                  SizedBox(
                    height: 20,
                  ),
                  nearWidget("yum", "Yum Cha"),
                  SizedBox(
                    height: 20,
                  ),
                  nearWidget("crim", "Crimson Cup"),
                ],
              ),
            ),
          ),
        ));
  }

  Row nearWidget(String img, String name) {
    return Row(children: [
      Container(
        height: 75,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/$img.png"),
              fit: BoxFit.fill,
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                ],
              ),
              Text("Best place of Pizza in Dhaka",
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ],
          ),
        ),
      ),
      InkWell(
          onTap: openRestaurantPage,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.green[500]),
            child: Text("Book Now",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                )),
          ))
    ]);
  }

  void openRestaurantPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RestaurantPage()));
  }
}

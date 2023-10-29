import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_a_bike/screens/home/widget/bike_details.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  List<Color> containerColors = List.generate(4, (index) => Colors.white);
  int selectedContainerIndex = -1;
  List listofbike = [
    "assets/images/home/Indian-Scout-Bobber-2 1.png",
    "assets/images/home/meteor 1.png",
    "assets/images/home/2021-Honda-Rebel-1100 1.png",
  ];
  List bikeName = ["Meteor", "Scout Bobber", "Honda Rebel 1100"];
  List bikeBrand = ["Indian", "Royal Enfield", "Honda"];
  List bikePrice = ["1000/", "500/", "1500/"];
  List biketypes = ["Adventure", "Cruiser", "Sports", "Touring"];
  List recentview = [
    "assets/images/home/Frame 4.png",
    "assets/images/home/Frame 5.png",
    "assets/images/home/Frame 6.png"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isBooked = false;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 23.43,
                    top: 25,
                    right: size.width / 23.43 * 2),
                child: Column(
                  children: [
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        // Adjust the radius as needed
                        child: Image.asset(
                          'assets/images/home/profile.png',
                          // Replace with the path to your image
                          width: 50, // Adjust the width as needed
                          height: 50, // Adjust the height as needed
                          fit: BoxFit
                              .cover, // You can adjust the fit mode as needed
                        ),
                      ),
                      SizedBox(
                        width: size.width / 26.78,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8c7e7e),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Abhi Tiwari",
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      )
                    ]),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffe5e5e5),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8c7e7e),
                          ),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (text) {
                          // Handle search input changes here
                          print("Search text: $text");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 16.24,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      bool isSelected = selectedContainerIndex == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedContainerIndex =
                                  -1; // Deselect if it was already selected
                            } else {
                              selectedContainerIndex =
                                  index; // Select if it was not selected
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: selectedContainerIndex == index
                                    ? Colors.black
                                    : Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 2)),
                            height: 50,
                            width: size.width / 3.5,
                            child: Center(
                                child: Text(
                              biketypes[index],
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            )),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 38,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Popular",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  TextSpan(
                    text: " items",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8c7e7e),
                    ),
                  ),
                ])),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height / 3.60,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BikeDetails()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 2)),
                            height: size.height / 3.60,
                            width: size.width / 2.622,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    listofbike[index],
                                    width: size.width / 2.622,
                                    height: size.height / 5.139,
                                    fit: BoxFit.cover
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    bikeName[index],
                                    style: const TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    bikeBrand[index],
                                    style: const TextStyle(
                                      fontFamily: "Roboto Slab",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                      height: 24 / 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: bikePrice[index],
                                      style: const TextStyle(
                                        fontFamily: "Risque",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " per day",
                                      style: const TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 17,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ])),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 26,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Recently",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  TextSpan(
                    text: " viewed",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8c7e7e),
                    ),
                  ),
                ])),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2)),
                          height: size.height / 16.24,
                          width: size.width / 2.622,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: size.width / 31.25,
                                  ),
                                  Image.asset(
                                    recentview[index],
                                    width: size.width / 8.33,
                                    height: size.height / 23.2,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: size.width / 31.25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: size.height / 203,
                                      ),
                                      Text(
                                        "Hayabusa",
                                        style: const TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff000000),
                                          height: 21 / 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                          text: bikePrice[index],
                                          style: const TextStyle(
                                            fontFamily: "Risque",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: " per day",
                                          style: const TextStyle(
                                            fontFamily: "Roboto",
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ]))
                                    ],
                                  ),
                                ],
                              ),
                              isBooked
                                  ?
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width / 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),
                                  height: size.height / 23.2,
                                  child: Center(
                                    child: Text("Booked",
                                        style: const TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                              )
                                  : Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Book Now",
                                            style: const TextStyle(
                                              fontFamily: "Roboto",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          )),
                                    )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}

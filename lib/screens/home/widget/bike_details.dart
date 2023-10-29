import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_a_bike/screens/home/widget/pay.dart';

class BikeDetails extends StatefulWidget {
  const BikeDetails({Key? key}) : super(key: key);

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
  List Additemsimg = [
    "assets/images/home/Frame 4.png",
    "assets/images/home/Frame 4 (2).png",
    "assets/images/home/Frame 4 (3).png",
    "assets/images/home/Frame 4 (4).png",
  ];
  @override
  Widget build(BuildContext context) {
    print("jvh");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image.asset(
                            "assets/images/back arrow.png",
                            height: 30,
                          ),
                        )),
                    Container(
                      height: 60,
                      width: 274,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                        child: const Text(
                          'Bike Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Indian",
                                style: const TextStyle(
                                  fontFamily: "Roboto Slab",
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  height: 29 / 22,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Scout Bobber",
                                style: const TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                  height: 25 / 21,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ]),
                        SizedBox(
                          height: size.height / 24,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          height: 63,
                          width: 136,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Category",
                                style: const TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8c7e7e),
                                  height: 21 / 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Cruiser",
                                style: const TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  height: 21 / 18,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height / 24,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          height: 63,
                          width: 136,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Displacement",
                                style: const TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8c7e7e),
                                  height: 21 / 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "1133 cc",
                                style: const TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  height: 21 / 18,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 40,
                        // ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          height: size.height / 2.87,
                          width: size.width / 1.847,
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Image.asset(
                            "assets/images/home/scout bobber 1.png",
                            height: 273,
                            width: size.width / 1.71,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      height: 63,
                      width: 136,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Category",
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8c7e7e),
                              height: 21 / 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Cruiser",
                            style: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                              height: 21 / 18,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pay()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        height: 63,
                        width: size.width / 1.875,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rent",
                              style: const TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                height: 21 / 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "1499/per day",
                              style: const TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                height: 21 / 18,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Add",
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
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
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
                                      Additemsimg[index],
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
                                                text: "800/",
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

                                Padding(
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
                                        "Add",
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
      ),
    );
  }
}

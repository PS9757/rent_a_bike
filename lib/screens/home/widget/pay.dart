import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? startDate : endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null &&
        (isStartDate ? picked != startDate : picked != endDate)) {
      setState(() {
        if (isStartDate) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  InkWell buildDateContainer({
    required String title,
    required DateTime selectedDate,
    required bool isStartDate,
    required Size size,
  }) {
    return InkWell(
      onTap: () {
        _selectDate(context, isStartDate);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffE5E5E5),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 70,
        width: size.width / 1.266,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8c7e7e),
                    height: 23 / 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  // Display selected date
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    height: 23 / 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Icon(Icons.calendar_today_outlined)
          ],
        ),
      ),
    );
  }

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
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
                      // margin: EdgeInsets.only(right: 20),
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
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffBABABA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildDateContainer(
                        title: "Start Date",
                        selectedDate: startDate,
                        isStartDate: true,
                        size: size,
                      ),
                      buildDateContainer(
                        title: "End Date",
                        selectedDate: endDate,
                        isStartDate: false,
                        size: size,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffBABABA)),
                    ),
                    height: 38,
                    width: size.width,
                    child: Text(
                      "Apply coupon",
                      style: const TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8c7e7e),
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Details",
                    style: const TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      height: 21 / 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  color: Color(0xff8c7e7e),
                  thickness: 1,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Days ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "4 ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rent ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "₹ 5994",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Additional items ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "₹ 6400",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coupon Discount ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "₹   389",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000),
                            height: 21/18,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Color(0xff8c7e7e),
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total ",
                      style: const TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        height: 21/18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "₹ 12,005",
                      style: const TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        height: 21/18,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffBABABA)),
        ),
        child: Center(
          child: Text(
            "Pay Now",
            style: const TextStyle(
              fontFamily: "Roboto",
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

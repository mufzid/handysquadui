import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:handysqaud_user_app/service_sheet_content.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: iconWidget(Icon(Icons.arrow_back_ios_outlined, size: 20)),
        ),
        actions: [
          iconWidget(Icon(Icons.search_sharp, size: 22)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 18),
            child: iconWidget(Icon(Icons.share, size: 22)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deep Cleaning in Trivandrum',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Text(
                        '4.95 (75 reviews)',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 74,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10);
                      },

                      itemBuilder: (context, index) {
                        return cashBackWidget();
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  typeWidget(
                    "Apartment",
                    'assets/images/building.png',
                    isSelected: true,
                  ),
                  typeWidget("Independent House", "assets/images/home.png"),
                  typeWidget("Flat/ House", "assets/images/house.png"),
                ],
              ),
            ),
            divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, bottom: 20),
                    child: Text(
                      'Apartment',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  serviceDetials(context),
                  divider(hieght: 2.5),
                  SizedBox(height: 20),

                  serviceDetials(context),
                  divider(hieght: 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: 90,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.menu, color: Colors.white, size: 18),
                SizedBox(width: 5),
                Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget iconWidget(Icon icon) {
  return CircleAvatar(
    radius: 21,
    backgroundColor: const Color.fromARGB(255, 203, 203, 203),
    child: CircleAvatar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      radius: 20,
      child: icon,
    ),
  );
}

Widget cashBackWidget() {
  return Container(
    // width: 270,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        width: 1,
        color: const Color.fromARGB(255, 209, 209, 209),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/clock.png", scale: 15),

        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Up to ₹100 cashback',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Valid for BHIM app only',
                style: TextStyle(
                  fontSize: 13,
                  color: const Color.fromARGB(255, 99, 99, 99),
                  // fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget typeWidget(String title, String image, {bool isSelected = false}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(width: 1, color: Colors.blueAccent)
              : null,
          color: isSelected
              ? Color.fromRGBO(232, 242, 255, 1)
              : Color.fromRGBO(246, 246, 246, 1),
        ),
        child: Image.asset(image, scale: 10),
      ),
      SizedBox(height: 7),
      Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
    ],
  );
}

Widget divider({double hieght = 5}) {
  return Container(
    width: double.infinity,
    height: hieght,
    decoration: BoxDecoration(color: const Color.fromRGBO(246, 246, 246, 1)),
  );
}

Widget serviceDetials(BuildContext context) {
  return GestureDetector(
    onTap: () {
      log('select');

      bottomSheet(context);
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Furnished Apartment -\nStandard Cleaning',
                style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 19),
                  Text(
                    '4.95 (75 reviews)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 15),
                child: Row(
                  children: List.generate(
                    111 ~/ 1.5,
                    (index) => Expanded(
                      child: Container(
                        color: index % 2 == 0
                            ? Colors.transparent
                            : const Color.fromARGB(255, 199, 198, 198),
                        height: 2,
                      ),
                    ),
                  ),
                ),
              ),

              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 11, color: Colors.black),
                  children: const [
                    TextSpan(text: 'Starts at '),
                    TextSpan(
                      text: '₹5,200 ', // highlighted part
                      style: TextStyle(
                        color: Colors.black, // highlight color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '₹6,800',
                      style: TextStyle(
                        color: Colors.black, // faded/secondary color if needed
                        decoration: TextDecoration
                            .lineThrough, // optional for strike-through
                      ),
                    ),
                    TextSpan(text: ' . 4 hr 30 mins'),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Comprehensive move-in/out cleaning, covering detailed wall, baseboard, and appliance cleaning.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black, // highlight color
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromRGBO(
                    5,
                    105,
                    248,
                    1,
                  ), // text & icon color
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('View details'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_rounded, size: 14),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Stack(
          clipBehavior: Clip.none, // 👈 this allows overflow to be visible

          children: [
            Container(
              alignment: Alignment.topRight,
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mop.png'),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),

                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 32, 110, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '20% off',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 9,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 30,
              bottom: -15,
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //  Color.fromRGBO(232, 242, 255, 1),
                  border: Border.all(
                    width: 1,
                    color: Color.fromRGBO(5, 105, 248, 1),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(5, 105, 248, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Future<dynamic> bottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true, // optional: allows full-screen height
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return SizedBox(
        height:
            MediaQuery.of(context).size.height *
            0.9, // or use MediaQuery to make dynamic
        child: ServiceSheetContent(),
      );
    },
  );
}

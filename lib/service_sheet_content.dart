import 'package:flutter/material.dart';

class ServiceSheetContent extends StatelessWidget {
  const ServiceSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      'Cobwebs removals',
      'Light fittings and fan cleaning',
      'Dry dusting of Walls and ceiling',
      'Switchboards and Doors Dusting',
      'Wall shelfs Dusting (outside)',
      "Windows - grill, frames, and glass Dusting",
      "Curtains & blinds-Dusting",
      "Bed/cot dusting",
      "Furniture Dusting & Wardrobe - outside",
      "Loft -outside & Floor cleaning",
    ];
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mop.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            Text(
                              '4.95 (75 reviews)',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Furnished Apartment -\nStandard Cleaning',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
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
                                  color: Colors
                                      .black, // faded/secondary color if needed
                                  decoration: TextDecoration
                                      .lineThrough, // optional for strike-through
                                ),
                              ),
                              TextSpan(text: ' . 4 hr 30 mins'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 25,
                      ),
                      // height: 30,
                      // width: 60,
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
                          fontSize: 14,
                          color: Color.fromRGBO(5, 105, 248, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              divider(hieght: 2.5),
              // SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select requirements',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        // height: 1.2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Size of home',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red, // highlight color
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          return commonRateContainer();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Extra services',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          return commonRateContainer();
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'What is included?',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        // height: 1.2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Bedroom',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: list.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return checkList(name: list[index]);
                      },
                    ),
                    divider(hieght: 2.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Bathroom',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return checkList(name: list[index]);
                      },
                    ),

                    divider(hieght: 2.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Kitchen',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: list.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return checkList(name: list[index]);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'show more',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent,
                          inherit: true,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                    divider(hieght: 2.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Living & Dining Area, Balcony',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: list.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return checkList(name: list[index]);
                      },
                    ),
                    divider(hieght: 2.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'What is excluded?',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          // height: 1.2,
                        ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return checkList(name: list[index], isChecked: false);
                      },
                    ),
                    divider(hieght: 2.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Other Informations',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          // height: 1.2,
                        ),
                      ),
                    ),
                    Text(
                      """
Our deep cleaning services in Thiruvananthapuram comes with transparent  pricing and no hidden costs. You’ll know exactly what to expect, and we  ensure that our services offer great value for your investment.

A clean and pristine living or working space is essential for your  well-being and productivity. Our deep cleaning services in  Thiruvananthapuram are here to help you achieve just that. With our  skilled team, top-notch equipment, eco-friendly products, and tailored  solutions, we stand ready to transform your space into a sparkling and  healthy haven. Don’t settle for ordinary cleaning; experience the  difference between professional deep cleaning services. Contact us today to schedule your deep cleaning session and witness the remarkable  transformation of your premises.""",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                      child: Text(
                        'show more',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent,
                          inherit: true,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                    divider(hieght: 2.5),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget commonRateContainer() {
  return Container(
    padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 25),
    decoration: BoxDecoration(
      color: Colors.white,
      //  Color.fromRGBO(232, 242, 255, 1),
      border: Border.all(width: 0.5, color: Colors.grey),

      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2 BHK ',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        Text(
          '(upto 1200sqft)',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '₹ 5,200',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget divider({double hieght = 5}) {
  return Container(
    width: double.infinity,
    height: hieght,
    decoration: BoxDecoration(color: const Color.fromRGBO(246, 246, 246, 1)),
  );
}

Widget checkList({required String name, bool isChecked = true}) {
  return Row(
    children: [
      isChecked
          ? Image.asset('assets/images/Vector.png')
          : Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 218, 24, 24),
              ),
              child: Icon(Icons.close_rounded, size: 11, color: Colors.white),
            ),
      SizedBox(width: 10),
      Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    ],
  );
}

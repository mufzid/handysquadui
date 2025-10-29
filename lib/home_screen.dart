import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text('Handysqaud')),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Kazhakootam',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Thiruvananthapuram - Kerala - 69...',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0, bottom: 40.0),
                    child: SizedBox(
                      height: 45,
                      child: SearchBar(
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                        ),

                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        leading: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Search for handysqaud',
                        hintStyle: WidgetStateProperty.all(
                          TextStyle(
                            color: const Color.fromARGB(255, 111, 111, 111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              height: 100,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10),

                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return workerType();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget workerType() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 247, 246, 246),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: const Color.fromARGB(255, 195, 194, 194),
        ),
        SizedBox(height: 5),
        Text(
          'Electrician ',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    ),
  );
}

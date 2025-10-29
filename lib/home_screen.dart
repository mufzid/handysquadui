import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text('Handysqaud')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
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

                          backgroundColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
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
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 25, bottom: 10),
                child: SizedBox(
                  height: 170,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 15),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return gradientWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 10,
                ),
                child: Text(
                  'Most Booked Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 15),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return serviceType();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 206, 185),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Give your space the makeover it’s been waiting for!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Home painting',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/chair.png'),
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 10,
                ),
                child: Text(
                  'Property management Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 15),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return serviceType();
                    },
                  ),
                ),
              ),
            ],
          ),
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

Widget gradientWidget() {
  return Container(
    width: 290,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
          // Color.fromARGB(255, 216, 175, 72),
          // Color.fromARGB(255, 247, 229, 174),
          Color.fromARGB(255, 178, 62, 87),
          Color.fromARGB(255, 239, 172, 187),
          // Color.fromARGB(255, 94, 140, 66),
          // Color.fromARGB(255, 204, 240, 174),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'Get experts in \n2 hours at ₹159 ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 1.1,
          ),
        ),
        SizedBox(height: 5),

        Text(
          "Electrician, Plumbers, Carpenters",
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget serviceType() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 160,
        width: 190,
        // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 246, 246),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/deepclean.jpg'),
          ),
        ),
      ),
      SizedBox(height: 5),
      Text(
        'Deep Cleaning ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 18),
          Text(
            '4.95',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 87, 87, 87),
            ),
          ),
        ],
      ),
    ],
  );
}

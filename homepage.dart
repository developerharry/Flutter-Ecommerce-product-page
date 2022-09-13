import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset('assets/back.svg'),
              onPressed: () {},
            ),
            title: const Text(
              'Product Details',
              style: TextStyle(color: Colors.black),
            )),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  'assets/product.png',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: Text(
                "InstaCuppa Manual Coffee Bean Grinder, Hand Coffee Mill with 2 Glass Jars Ceramic Burr Stainless Steel Handle for Aeropress, Drip Coffee, Espresso, french press. Turkish Brew",
                style: TextStyle(height: 1.5, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 238, 238, 238),
                        padding: const EdgeInsets.fromLTRB(18, 3, 18, 3),
                        child: const Text(
                          'HASTHIP',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 35,
                              child: Image.asset('assets/amazon.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Amazon price',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  "\$24",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/clock.svg'),
                          const Text(
                            '25 Min Left',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: SvgPicture.asset('assets/location.svg'),
                            ),
                            const Text(
                              'Shastri nagar nagar palika,\n lucknow, uttar pradesh, India ',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 2,
                              color: const Color.fromARGB(255, 238, 238, 238),
                            ),
                            const Text(
                              ' 13km',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(text: 'Description'),
                Tab(text: 'Specification'),
                Tab(text: 'Features'),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '• The full adjustable design of our cooffee bean grinder, means it can be used for a range of coffee makers.\n\n• The compact design of our coffee bean grinder makes it perfect for not taking up much space in your kitchen, whilist also making it deal for offices or travelling.\n\n• The coffee bean grinder can easily be dismantaled for easy cleaning.\n\n•The coffee bean grinder can easily be dismantled for easy cleaning.',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Center(
                    child: Text(
                      ' ',
                    ),
                  ),
                  Center(
                    child: Text(
                      ' ',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset('assets/bid.svg'),
                  const Text(
                    'PLACE BID',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

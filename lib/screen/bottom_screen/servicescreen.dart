import 'package:BikeServicing/screen/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   title: const Text('Services'),
      //   centerTitle: true,
      //   backgroundColor: Colors.orange,
      // ),
      // body: Column
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //services
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Services',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.cartShopping),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                // LISTVIEW OF service
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(FontAwesomeIcons.house),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Home Service',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 7, 7, 7)),
                              ),
                              Text('RS 800')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      'Home Service',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '1.Service at your doorstep.2.Deliver an easier and safe experience of our customer.3.we do not wash your bike in your office or home',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(
                                  FontAwesomeIcons.screwdriverWrench),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Regular Service',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 5, 5, 5)),
                              ),
                              Text('RS 525')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      ' Regular Service',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '1.Test drive the bike , if reqd for reported troubles.2.Wash and clean the bike.3.Inspect choke opertaion.4.check battery voltage.5.check wheel and correct tyre pressure correctly. etc.....',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(FontAwesomeIcons.motorcycle),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Bike Washing',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text('RS 120')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      'Bike Washing',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '*Your bike is washed properly and we make sure there is no more dirt.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child:
                                  const FaIcon(FontAwesomeIcons.helmetSafety),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Helmet Cleaning',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text('RS 300')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      ' Helmet Cleaning',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '*Helmet are cleaned by removing all dirt .',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(FontAwesomeIcons.circleDot),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Tubeless',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text('RS 300')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      'Tubeless',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '*Liquid sealants provided.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // this is engine oil
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(FontAwesomeIcons.oilCan),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Engine Oil Flush',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text('RS 600')
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      ' Engine Oil Flush',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '*Protect engine parts while providing effective cleaning and removes sludge and other deposits easily.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // this is battery service
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color.fromARGB(255, 222, 91, 26),
                              child: const FaIcon(FontAwesomeIcons.carBattery),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Battery Replacement',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text(
                                'RS 200',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 172, 162, 162)),
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text(
                                      'Battery Replacement',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    content: Text(
                                      '*Mobil cost is extra',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

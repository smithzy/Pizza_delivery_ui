import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_delivery_ui/helper/navigation_function.dart';
import 'package:pizza_delivery_ui/screen/pizza_screen.dart';
import 'package:pizza_delivery_ui/widget/box2.dart';
import 'package:pizza_delivery_ui/widget/box3.dart';
import 'package:pizza_delivery_ui/widget/box4.dart';
import 'package:pizza_delivery_ui/widget/box_price.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 11.0),
          child: Image.asset('assets/Logo.png'),
        ),
        title: Container(
          clipBehavior: Clip.none,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Color(0xffFF7222),
              ),
              const Text(
                'Cairo,',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              ),
              Image.asset(
                'assets/Ye.png',
                scale: 20,
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, bottom: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/hrt.png')),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color.fromARGB(255, 234, 230, 223)),
              padding: const EdgeInsets.all(2.0),
              // child: Image.asset('assets/images/hrt.png'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 25, 50, 2),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(150, 235, 215, 179),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: double.infinity,
                    height: 120,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 25, 30, 2),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(100, 238, 204, 145),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: double.infinity,
                    height: 115,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 25, 20, 2),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 234, 230, 223),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: double.infinity,
                    height: 110,
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/fire1.png'),
                            const Text(
                              ' Eat Fresh Pizza',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/Tomato.png')
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              '⚡️Fast Delivery',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              width: 77,
                            ),
                            Image.asset('assets/Basil.png')
                          ],
                        ),
                        Row(
                          children: [
                            const Text('✨ Near For You',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300)),
                            const SizedBox(
                              width: 34,
                            ),
                            Image.asset('assets/Shallot.png')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 0, left: 230),
                    clipBehavior: Clip.none,
                    child: Image.asset(
                      'assets/girlpizza.png',
                      scale: 0.92,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 20),
                height: 46,
                width: double.infinity,
                clipBehavior: Clip.none,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 234, 230, 223),
                        hintText: 'Search for favorite Pizza',
                        hintStyle: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide(width: 1.8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                              width: 1.8, color: Color(0xffDFDFDF)),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/Search.png',
                            scale: 5,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 234, 230, 223),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/Filter.png'))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 3),
                // padding: const EdgeInsets.only(
                //   //   left: 10,
                //   right: 17,
                // ),
                clipBehavior: Clip.none,
                // padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Color(0xffCECECE),
                                        )))),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Text(
                                  'Pizza',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(context, const PizzaScreen());
                          },
                          child: const BoxPrice(),
                        ),
                        const Box3()
                      ],
                    ),
                    //const Gap(10),
                    Column(
                      children: const [
                        Box2(),
                        Box4(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
        floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          alignment: Alignment.center,
          height: 70,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(0, 244, 67, 54),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(122, 202, 196, 196),
                  blurRadius: 16,
                  spreadRadius: 30,
                )
              ]),
          child: Stack(
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(0, 146, 58, 52)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 2, bottom: 2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.white),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              clipBehavior: Clip.none,
                              child: Image.asset('assets/Home.png')),
                          const Gap(50),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/Group 4.png'))
                        ],
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(left: 150, top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Image.asset(
                  'assets/scanner.png',
                  scale: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

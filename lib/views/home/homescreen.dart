import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/utilities/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              child: Image.network(
                                'https://media-exp1.licdn.com/dms/image/C4E03AQHr-ORBFQDzdg/profile-displayphoto-shrink_200_200/0/1600172127782?e=1619049600&v=beta&t=r9ExIryzGcE6OYAHXuh8hKL6dNazK4Lqw9jh8KstYfc',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Hi, Abdul-Jemeel',
                              style: GoogleFonts.muli(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Add Money',
                              style: GoogleFonts.muli(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.9,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 28,
                              width: 28,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Account Balance',
                            style: GoogleFonts.muli(
                              color: accentColor,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'N',
                                style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '450.98',
                                style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: accentColor,
                                    ),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Spend',
                                    style: GoogleFonts.muli(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Icon(
                                      Icons.monetization_on,
                                      size: 22,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Save',
                                    style: GoogleFonts.muli(
                                      color: accentColor,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Icon(
                                      Icons.add_chart,
                                      size: 22,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Borrow',
                                    style: GoogleFonts.muli(
                                      color: accentColor,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';

import 'package:kuda_app_clone/views/components/standardButton.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BuyAirtimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            size: 35,
                            color: primaryColor,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Buy Airtime',
                        style: boldTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                        StandardButton(
                          text: 'next',
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(
                                LineAwesomeIcons.clock,
                                color: Colors.green,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text('Most Recent', style: subTitleTextStyle),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 95,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Data().recentAirtime.length,
                                  itemBuilder: (context, index) {
                                    var recentAirtime = Data().recentAirtime;

                                    Map providerImages = <String, String>{
                                      "mtn": 'assets/images/kuda.jpg',
                                      "glo": 'assets/images/GTBank_logo.png',
                                      "airtel": 'assets/images/acceleres.png',
                                      "Unknown Bank":
                                          'assets/images/unknown.png',
                                      'uk': "assets/images/resized-1.jpg"
                                    };
                                    return Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.brown,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 10),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                child: Image.asset(
                                                    providerImages[
                                                        recentAirtime[index]
                                                            .provider],
                                                    fit: BoxFit.fill,
                                                    height: 40,
                                                    width: 40),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '0' +
                                                recentAirtime[index]
                                                    .phone
                                                    .toString(),
                                            maxLines: 2,
                                            softWrap: true,
                                            textAlign: TextAlign.center,
                                            style: subTitleTextStyle.copyWith(
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Amount',
                                style: labelTextStyle,
                              ),
                              Text(
                                'Balance: #13.50',
                                style: labelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: '#0.00',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Network',
                            style: labelTextStyle,
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintStyle: TextStyle(),
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Phone Number',
                                style: labelTextStyle,
                              ),
                              Text(
                                'Choose Contact',
                                style: GoogleFonts.muli(
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: '0123456789',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

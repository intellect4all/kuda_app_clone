import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/payments_page/widgets/payment_action_tile.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Payments',
                style: boldTextStyle,
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/kuda.jpg',
                            fit: BoxFit.fill,
                            height: 10,
                            width: 10,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Friends on Kuda',
                          style: GoogleFonts.muli(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Friends on Kuda',
                                      style: GoogleFonts.muli(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Text(
                                        'NEW!',
                                        style: GoogleFonts.muli(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Find Your Contacts on Kuda.',
                                  style: subTitleTextStyle,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Connect',
                                style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    PaymentActionTile(
                        title: 'Send Money',
                        subtitle: 'Free transfers to all banks.',
                        icon: Icons.mobile_off_outlined,
                        action: () {}),
                    SizedBox(height: 5),
                    PaymentActionTile(
                        title: 'Buy Airtime',
                        subtitle: 'Recharge any phone easily.',
                        icon: Icons.mobile_friendly,
                        action: () {}),
                    SizedBox(height: 5),
                    PaymentActionTile(
                        title: 'Pay A Bill',
                        subtitle: 'Take care of your essentials.',
                        icon: Icons.bookmark,
                        action: () {}),
                    SizedBox(height: 5),
                    PaymentActionTile(
                        title: 'Payment Link',
                        subtitle: 'Send money with a simple link.',
                        icon: Icons.link,
                        action: () {}),
                    SizedBox(height: 5),
                    PaymentActionTile(
                      title: 'web payment',
                      subtitle: 'pay online without your card.',
                      icon: Icons.web,
                      action: () {},
                    ),
                    SizedBox(height: 50),
                    

                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
